/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   miniRT.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mriant <mriant@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/03 17:10:29 by mriant            #+#    #+#             */
/*   Updated: 2022/10/03 17:29:58 by mriant           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINIRT_H
# define MINIRT_H

typedef struct s_point
{
	int	x;
	int	y;
	int	z;
}	t_point;

typedef struct	s_vector
{
	int		vx;
	int		vy;
	int		vz;
	double	length;
}	t_vector;

#endif