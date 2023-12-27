using System.Collections.Generic;
using UnityEngine;

public class Pathfinding : MonoBehaviour
{
    public LayerMask obstacleMask; // 用于检测障碍物的层
    public float nodeRadius = 0.5f; // 节点半径，用于检测节点间的障碍物
    public Transform seeker, target; // 起点和目标点

    private List<Node> path;

    void Start()
    {
        FindPath(seeker.position, target.position);
    }

    void FindPath(Vector3 startPos, Vector3 targetPos)
    {
        Node startNode = NodeFromWorldPoint(startPos);
        Node targetNode = NodeFromWorldPoint(targetPos);

        List<Node> openSet = new List<Node>();
        HashSet<Node> closedSet = new HashSet<Node>();
        openSet.Add(startNode);

        while (openSet.Count > 0)
        {
            Node currentNode = openSet[0];
            for (int i = 1; i < openSet.Count; i++)
            {
                if (openSet[i].fCost < currentNode.fCost || (openSet[i].fCost == currentNode.fCost && openSet[i].hCost < currentNode.hCost))
                {
                    currentNode = openSet[i];
                }
            }

            openSet.Remove(currentNode);
            closedSet.Add(currentNode);

            if (currentNode == targetNode)
            {
                RetracePath(startNode, targetNode);
                return;
            }

            foreach (Node neighbor in GetNeighbors(currentNode))
            {
                if (closedSet.Contains(neighbor))
                {
                    continue;
                }

                int newMovementCostToNeighbor = currentNode.gCost + GetDistance(currentNode, neighbor);
                if (newMovementCostToNeighbor < neighbor.gCost || !openSet.Contains(neighbor))
                {
                    neighbor.gCost = newMovementCostToNeighbor;
                    neighbor.hCost = GetDistance(neighbor, targetNode);
                    neighbor.parent = currentNode;

                    if (!openSet.Contains(neighbor))
                    {
                        openSet.Add(neighbor);
                    }
                }
            }
        }
    }

    void RetracePath(Node startNode, Node endNode)
    {
        path = new List<Node>();
        Node currentNode = endNode;

        while (currentNode != startNode)
        {
            path.Add(currentNode);
            currentNode = currentNode.parent;
        }

        path.Reverse(); // 反转路径，使其按顺序排列
    }

    List<Node> GetNeighbors(Node node)
    {
        List<Node> neighbors = new List<Node>();

        for (int x = -1; x <= 1; x++)
        {
            for (int y = -1; y <= 1; y++)
            {
                if (x == 0 && y == 0)
                {
                    continue;
                }

                int checkX = node.gridX + x;
                int checkY = node.gridY + y;

                if (checkX >= 0 && checkX < Grid.gridSizeX && checkY >= 0 && checkY < Grid.gridSizeY)
                {
                    neighbors.Add(Grid.grid[checkX, checkY]);
                }
            }
        }

        return neighbors;
    }

    int GetDistance(Node nodeA, Node nodeB)
    {
        int distX = Mathf.Abs(nodeA.gridX - nodeB.gridX);
        int distY = Mathf.Abs(nodeA.gridY - nodeB.gridY);

        if (distX > distY)
        {
            return 14 * distY + 10 * (distX - distY);
        }
        return 14 * distX + 10 * (distY - distX);
    }

    Node NodeFromWorldPoint(Vector3 worldPosition)
    {
        float percentX = (worldPosition.x + Grid.gridWorldSize.x / 2) / Grid.gridWorldSize.x;
        float percentY = (worldPosition.y + Grid.gridWorldSize.y / 2) / Grid.gridWorldSize.y;
        percentX = Mathf.Clamp01(percentX);
        percentY = Mathf.Clamp01(percentY);

        int x = Mathf.RoundToInt((Grid.gridSizeX - 1) * percentX);
        int y = Mathf.RoundToInt((Grid.gridSizeY - 1) * percentY);

        return Grid.grid[x, y];
    }
}

public class Node
{
    public bool walkable;
    public Vector3 worldPosition;
    public int gridX, gridY;
    public int gCost, hCost;
    public Node parent;

    public int fCost
    {
        get { return gCost + hCost; }
    }

    public Node(bool _walkable, Vector3 _worldPosition, int _gridX, int _gridY)
    {
        walkable = _walkable;
        worldPosition = _worldPosition;
        gridX = _gridX;
        gridY = _gridY;
    }
}

public class Grid : MonoBehaviour
{
    public static int gridSizeX, gridSizeY;
    public static Node[,] grid;
    public static Vector2 gridWorldSize;

    void Start()
    {
        // 初始化网格
    }
}
