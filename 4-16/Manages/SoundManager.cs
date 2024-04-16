using System.Collections.Generic;
using UnityEngine;

public class SoundManager : Singleton<SoundManager>
{
    private AudioSource soundSource;
    private AudioSource sfxSource;
    public bool sfxEnabled = true; // 控制音效播放的开关状态，默认为开启
    private Dictionary<string, AudioClip> audioClips = new Dictionary<string, AudioClip>();
    // 初始化声音管理器
    public void Initialize()
    {
        // 在场景中创建一个用于播放声音的游戏对象
        GameObject soundGameObject = new GameObject("SoundManager");
        soundSource = soundGameObject.AddComponent<AudioSource>();

        GameObject sfxGameObject = new GameObject("SFXManager");
        sfxSource = sfxGameObject.AddComponent<AudioSource>();
        Debug.Log("init SoundManager");
    }
    // 添加声音资源到字典中
    public void AddAudioClip(string clipName, AudioClip clip)
    {
        if (!audioClips.ContainsKey(clipName))
        {
            audioClips.Add(clipName, clip);
        }
    }
    // 播放声音
    public void PlaySound(string clipName, float volume = 1.0f)
    {
        if (!audioClips.ContainsKey(clipName)) return;
        // 获取指定键名对应的 AudioClip
        AudioClip clip = audioClips[clipName];
        // 播放 AudioClip
        if (clip != null && soundSource != null)
        {
            soundSource.PlayOneShot(clip, volume);
        }
    }
    // 播放音效
    public void PlaySFX(string clipName, float volume = 1.0f)
    {
        if (!audioClips.ContainsKey(clipName)) return;
        // 获取指定键名对应的 AudioClip
        AudioClip clip = audioClips[clipName];
        if (sfxEnabled && clip != null && sfxSource != null)
        {
            sfxSource.PlayOneShot(clip, volume);
        }
    }
    // 停止声音
    public void StopSound()
    {
        if (soundSource != null)
        {
            soundSource.Stop();
        }
    }
    // 关闭音效播放
    public void DisableSFX()
    {
        sfxEnabled = false;
    }

    // 开启音效播放
    public void EnableSFX()
    {
        sfxEnabled = true;
    }

    // 调整声音音量
    public void SetVolume(float volume)
    {
        if (soundSource != null)
        {
            soundSource.volume = Mathf.Clamp01(volume);
        }
    }

    // 循环播放声音
    public void PlayLoopingSound(AudioClip clip, float volume = 1.0f)
    {
        if (clip != null && soundSource != null)
        {
            soundSource.clip = clip;
            soundSource.loop = true;
            soundSource.volume = volume;
            soundSource.Play();
        }
    }

    // 暂停声音
    public void PauseSound()
    {
        if (soundSource != null && soundSource.isPlaying)
        {
            soundSource.Pause();
        }
    }

    // 恢复声音
    public void ResumeSound()
    {
        if (soundSource != null && !soundSource.isPlaying)
        {
            soundSource.UnPause();
        }
    }

    // 卸载声音资源
    public void UnloadSound(AudioClip clip)
    {
        if (clip != null)
        {
            Resources.UnloadAsset(clip);
        }
    }
}
