(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   moleex.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ihestin <marvin@42.fr>                     +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/06/08 17:03:28 by ihestin           #+#    #+#             *)
(*   Updated: 2018/06/08 17:03:32 by ihestin          ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)


class water =
    object
        inherit Molecule.molecule "Water"  [(new Mendel.hydrogen); (new Mendel.hydrogen); (new Mendel.oxygen)]
    end

class tnt =
    object
        inherit Molecule.molecule "Trinitrotoluene"  [(new Mendel.hydrogen); (new Mendel.hydrogen);
        		 (new Mendel.oxygen);(new Mendel.hydrogen);(new Mendel.oxygen);(new Mendel.oxygen);(new Mendel.oxygen);
        		 (new Mendel.oxygen);(new Mendel.oxygen);(new Mendel.hydrogen);(new Mendel.hydrogen);
        		 (new Mendel.nitrogen);(new Mendel.nitrogen);(new Mendel.nitrogen);
        		 (new Mendel.carbon);(new Mendel.carbon);(new Mendel.carbon);(new Mendel.carbon);
        		 (new Mendel.carbon);(new Mendel.carbon);(new Mendel.carbon)]
    end

class dioxcarbon =
    object
        inherit Molecule.molecule "Dioxcarbon"  [(new Mendel.carbon); (new Mendel.oxygen); (new Mendel.oxygen)]
    end

class monoxcarbon =
    object
        inherit Molecule.molecule "Monoxcarbon"  [(new Mendel.carbon); (new Mendel.oxygen)]
    end

class soude =
    object
        inherit Molecule.molecule "Soude"  [(new Mendel.sodium); (new Mendel.oxygen); (new Mendel.hydrogen)]
    end

class chloreacide =
    object
        inherit Molecule.molecule "Chloreacide"  [(new Mendel.chlorine); (new Mendel.hydrogen)]
    end

 class sel =
    object
        inherit Molecule.molecule "Sel"  [(new Mendel.sodium); (new Mendel.chlorine)]
    end


