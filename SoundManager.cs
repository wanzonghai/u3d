/* 在Unity中创建一个空对象，并将该脚本附加到该对象上。
在Inspector中设置soundClips数组，将要在游戏中使用的音效文件拖放到该数组中。
在游戏中的任何脚本中，通过SoundManager.instance.PlaySound("SoundName")来播放音效，其中"SoundName"是在soundClips数组中的音效名称。
这只是一个简单的音效管理器示例，你可以根据项目的需求扩展该类，以支持更多功能，如音量控制、停止音效、循环播放等。 */
using UnityEngine;
using System.Collections.Generic;

public class SoundManager : MonoBehaviour
{
    public static SoundManager instance; // 单例模式

    public AudioClip[] soundClips; // 存储音效的数组

    private Dictionary<string, AudioClip> soundDictionary; // 使用字典来快速查找音效

    void Awake()
    {
        // 确保只有一个音效管理器实例存在
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }

        InitializeSoundDictionary();
    }

    void InitializeSoundDictionary()
    {
        // 初始化字典
        soundDictionary = new Dictionary<string, AudioClip>();

        foreach (AudioClip clip in soundClips)
        {
            soundDictionary.Add(clip.name, clip);
        }
    }

    public void PlaySound(string soundName, float volume = 1f)
    {
        // 播放指定名称的音效
        if (soundDictionary.ContainsKey(soundName))
        {
            AudioSource.PlayClipAtPoint(soundDictionary[soundName], Camera.main.transform.position, volume);
        }
        else
        {
            Debug.LogWarning("Sound not found: " + soundName);
        }
    }
   
    public void StopAllSounds()
    {
        foreach (AudioSource audioSource in activeAudioSources)
        {
            audioSource.Stop();
            Destroy(audioSource.gameObject);
        }

        activeAudioSources.Clear();
    }

    public void PauseAllSounds()
    {
        foreach (AudioSource audioSource in activeAudioSources)
        {
            audioSource.Pause();
        }
    }

    public void ResumeAllSounds()
    {
        foreach (AudioSource audioSource in activeAudioSources)
        {
            audioSource.UnPause();
        }
    }
 public void FadeIn(string soundName, float fadeDuration, float targetVolume)
    {
        StartCoroutine(FadeInCoroutine(soundName, fadeDuration, targetVolume));
    }

    public void FadeOut(string soundName, float fadeDuration)
    {
        StartCoroutine(FadeOutCoroutine(soundName, fadeDuration));
    }

    IEnumerator FadeInCoroutine(string soundName, float fadeDuration, float targetVolume)
    {
        AudioSource audioSource = PlayClipAtPoint(soundDictionary[soundName], Camera.main.transform.position, 0f, false);
        activeAudioSources.Add(audioSource);

        float currentTime = 0f;
        float startVolume = 0f;

        while (currentTime < fadeDuration)
        {
            currentTime += Time.deltaTime;
            audioSource.volume = Mathf.Lerp(startVolume, targetVolume, currentTime / fadeDuration);
            yield return null;
        }

        audioSource.volume = targetVolume;
    }

    IEnumerator FadeOutCoroutine(string soundName, float fadeDuration)
    {
        AudioSource audioSource = null;

        foreach (AudioSource source in activeAudioSources)
        {
            if (source.clip != null && source.clip.name == soundName)
            {
                audioSource = source;
                break;
            }
        }

        if (audioSource != null)
        {
            float currentTime = 0f;
            float startVolume = audioSource.volume;

            while (currentTime < fadeDuration)
            {
                currentTime += Time.deltaTime;
                audioSource.volume = Mathf.Lerp(startVolume, 0f, currentTime / fadeDuration);
                yield return null;
            }

            audioSource.Stop();
            Destroy(audioSource.gameObject);
            activeAudioSources.Remove(audioSource);
        }
    }

    AudioSource PlayClipAtPoint(AudioClip clip, Vector3 position, float volume = 1f, bool loop = false)
    {
        GameObject audioObject = new GameObject("AudioSource");
        audioObject.transform.position = position;

        AudioSource audioSource = audioObject.AddComponent<AudioSource>();
        audioSource.clip = clip;
        audioSource.volume = volume;
        audioSource.loop = loop;
        audioSource.Play();

        audioSource.gameObject.AddComponent<AutoDestroy>();

        return audioSource;
    }
    // 可以根据需要添加更多音效管理功能，例如停止、暂停、淡入淡出等
}
