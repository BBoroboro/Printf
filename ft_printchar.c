/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printchar.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mamoulin <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/23 13:53:46 by mamoulin          #+#    #+#             */
/*   Updated: 2023/11/28 13:39:32 by mamoulin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "ft_printf.h"

int	ft_printchar(int c)
{
	if (c == 0)
	{
		write(1, "\0", 1);
		return (1);
	}
	else
		write(1, &c, 1);
	return (1);
}
/*
int	main(void)
{
	ft_printchar('\0');
	ft_printchar('1');
	ft_printchar(1);
	return (0);
}*/
