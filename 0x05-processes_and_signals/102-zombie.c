#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

/**
 * infinite_while - An infinite while loop
 *
 * Return: zero
 */

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - creates five zombie processes
 *
 * Return: Always zero
 */

int main(void)
{
	pid_t pid;
	char count = 0;

	while (count < 5)
	{
/* using fork() to create subprocesses */
		pid = fork();
		if (pid > 0)
		{
			printf("Zombie process created, PID: %d\n", pid);
/* pauses for one second */
			sleep(1);
			count++;
		}
		else
			exit(0);
	}
	infinite_while();
	return (EXIT_SUCCESS);
}
