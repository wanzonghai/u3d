
// 定义了一个 StateMachine 类，它可以切换和更新状态。状态通过继承 BaseState 类来实现，并根据需要重写进入、更新和退出方法。

// 你可以在 ExampleStateMachineUser 类的 Update 方法中根据条件切换状态。这是一个简单的状态机示例，你可以根据实际需求扩展和定制。
using System;
using UnityEngine;

// 定义状态枚举
public enum State
{
    Idle,
    Moving,
    Attacking,
    Dead
}

// 状态基类
public abstract class BaseState
{
    public abstract void Enter();
    public abstract void Update();
    public abstract void Exit();
}

// 状态机类
public class StateMachine
{
    private BaseState currentState;

    // 切换状态
    public void ChangeState(BaseState newState)
    {
        if (currentState != null)
        {
            currentState.Exit();
        }

        currentState = newState;
        currentState.Enter();
    }

    // 更新当前状态
    public void UpdateState()
    {
        if (currentState != null)
        {
            currentState.Update();
        }
    }
}

// 具体状态类的示例
public class IdleState : BaseState
{
    public override void Enter()
    {
        Debug.Log("Entering Idle State");
    }

    public override void Update()
    {
        Debug.Log("Idle State Update");
    }

    public override void Exit()
    {
        Debug.Log("Exiting Idle State");
    }
}

public class MovingState : BaseState
{
    public override void Enter()
    {
        Debug.Log("Entering Moving State");
    }

    public override void Update()
    {
        Debug.Log("Moving State Update");
    }

    public override void Exit()
    {
        Debug.Log("Exiting Moving State");
    }
}

public class AttackingState : BaseState
{
    public override void Enter()
    {
        Debug.Log("Entering Attacking State");
    }

    public override void Update()
    {
        Debug.Log("Attacking State Update");
    }

    public override void Exit()
    {
        Debug.Log("Exiting Attacking State");
    }
}

public class DeadState : BaseState
{
    public override void Enter()
    {
        Debug.Log("Entering Dead State");
    }

    public override void Update()
    {
        Debug.Log("Dead State Update");
    }

    public override void Exit()
    {
        Debug.Log("Exiting Dead State");
    }
}

// 使用状态机
public class ExampleStateMachineUser : MonoBehaviour
{
    private StateMachine stateMachine;

    private void Start()
    {
        stateMachine = new StateMachine();
        stateMachine.ChangeState(new IdleState());
    }

    private void Update()
    {
        // 在Update中更新状态
        stateMachine.UpdateState();

        // 根据条件切换状态
        if (Input.GetKeyDown(KeyCode.Space))
        {
            stateMachine.ChangeState(new MovingState());
        }
    }
}
