NAME = cub3D
BONUS_NAME = cub3D_bonus

SRC =	mandatory/cub3D.c\
		mandatory/ft_split.c\
		mandatory/ft_atoi.c\
		mandatory/paths.c\
		mandatory/errors.c\
		mandatory/leaks.c\
		mandatory/ft_map.c\
		mandatory/valid_pars.c\
		mandatory/ft_walls.c\
		mandatory/collect_map.c\
		mandatory/maping.c\
		mandatory/draw_lines.c\
		mandatory/move_player.c\
		mandatory/ft_map_pos.c\
		mandatory/ft_calloc.c\
		mandatory/intersections.c\
		mandatory/wall_projection.c\
		mandatory/intersection_tools.c\
		mandatory/free.c\
		mandatory/texturing.c

BONUS =	bonus/cub3D.c\
		bonus/ft_split.c\
		bonus/ft_atoi.c\
		bonus/paths.c\
		bonus/errors.c\
		bonus/leaks.c\
		bonus/ft_map.c\
		bonus/valid_pars.c\
		bonus/ft_walls.c\
		bonus/collect_map.c\
		bonus/maping.c\
		bonus/draw_lines.c\
		bonus/move_player.c\
		bonus/ft_map_pos.c\
		bonus/ft_calloc.c\
		bonus/intersections.c\
		bonus/wall_projection.c\
		bonus/intersection_tools.c\
		bonus/free.c\
		bonus/texturing.c

# Compiler flags
CFLAGS = -Wall -Wextra -Werror -I$(MLX_INC) -I/usr/X11/include

# MiniLibX paths (update with your actual path)
MLX_LIB = /Users/yichiba/minilibx-linux
MLX_INC = /Users/yichiba/minilibx-linux

# Linker flags
LDFLAGS = -L$(MLX_LIB) -lmlx -L/usr/X11/lib -lXext -lX11 -lbsd

OBJ = ${SRC:.c=.o}
BNS = ${BONUS:.c=.o}

all : $(NAME)

$(NAME): $(OBJ)
		cc $(CFLAGS) $^ $(LDFLAGS) -o $(NAME)

bonus: $(BNS)
		cc $(CFLAGS) $(BNS) $(LDFLAGS) -o $(BONUS_NAME)

clean : 
	rm -rf $(OBJ) $(BNS)

fclean : clean
	rm -rf $(NAME)  $(BONUS_NAME)

re : fclean all