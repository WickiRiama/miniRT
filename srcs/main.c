/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mriant <mriant@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/03 17:10:13 by mriant            #+#    #+#             */
/*   Updated: 2022/10/03 18:16:20 by mriant           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "miniRT.h"
#include "mlx.h"

int	main(void)
{

	void	*mlx_ptr;
	void	*mlx_win;

	mlx_ptr = mlx_init();
	if (!mlx_ptr)
		return (1);
	mlx_win = mlx_new_window(mlx_ptr, 1200, 800, "miniRT");
	mlx_loop(mlx_ptr);
	return (0);
}