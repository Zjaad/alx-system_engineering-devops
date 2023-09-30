#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int infinite_while(void)
{
	while (1)
    {
	    sleep(1);
    }
	return (0);
}

int main(void)
{
	pid_t child_pid;
	int x;
	for (x = 0; x < 5; x++)
	{
		child_pid = fork();
		if (child_pid == -1)
		{
			perror("fork");
			exit(1);
		}
		if (child_pid == 0)
		{
			exit(0);
		}
		else
		{
			printf("Zombie process created, PID: %d\n", child_pid);
		}
	}
	return (infinite_while());
}
