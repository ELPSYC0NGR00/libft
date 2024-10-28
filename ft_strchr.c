/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fde-simo <fde-simo@student.42madrid.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/26 15:37:00 by fde-simo          #+#    #+#             */
/*   Updated: 2024/10/26 16:13:18 by fde-simo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *str, int i)
{
	while (*str)
	{
		if (*str == (char)i)
			return ((char *)str);
		str++;
	}
	if ((char)i == '\0')
		return ((char *)str);
	return (NULL);
}
