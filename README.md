<div align="center">

# P2PFaaS

A Framework for FaaS load balancing  | _`stack` repository_

![License](https://img.shields.io/badge/license-GPLv3-green?style=flat)

</div>

# Introduction

The P2PFaaS is a framework that allows you to implement fully distributed and decentralised load balancing and scheduling algorithm.

# Booting

For starting the bare framework, you can use the command

```
docker-compose up
```

## With FaaS function

But for running a benchmark you need to install a FaaS function. In [[1]](https://dx.doi.org/10.1109/PerComWorkshops53856.2022.9767498) and [[2]](https://dx.doi.org/10.1109/TCC.2020.2968443) the `pigo-openfaas` [[3]](https://github.com/esimov/pigo-openfaas) function is used. You can clone it in this folder and then:

1. Build it with `faas-cli` [[4]](https://github.com/openfaas/faas-cli), this will create the Dockerfile needed for starting the Compose

    ```
    faas-cli build
    ```

2. Start the framwork

    ```
    docker-compose up -f docker-compose-fn.yml
    ```

## In SBCs (Single Board Computers e.g. Raspberry Pi)

For booting the framework in a set of SBCs nodes, starting from this repository and after cloning and building the functions like described above, you can use the OpenBalena [[5]](https://www.balena.io/open/) framework. Once all is set up, use the command to deploy the framework by building it within a node

```
balena deploy admin/myfleet -m -h <node-ip> -p 2375 --debug --build
```

# Cite the work
 If you are using P2PFaaS in your work please cite [[1]](https://dx.doi.org/10.1109/PerComWorkshops53856.2022.9767498) or [[2]](https://dx.doi.org/10.1109/TCC.2020.2968443)

```bibtex
@article{8964273,
    author={Beraldi, Roberto and Proietti Mattia, Gabriele},
    journal={IEEE Transactions on Cloud Computing},
    title={Power of random choices made efficient for fog computing},
    year={2020},
    volume={},
    number={},
    pages={1-1},
    doi={10.1109/TCC.2020.2968443}
}
```
```bibtex
@inproceedings{2022ProiettiMattiaOnRealtime,
  author = {{Proietti Mattia}, Gabriele and Beraldi, Roberto},
  booktitle = {2022 IEEE International Conference on Pervasive Computing and Communications Workshops and other Affiliated Events (PerCom Workshops)},
  title = {On real-time scheduling in Fog computing: A Reinforcement Learning algorithm with application to smart cities},
  year = {2022},
  volume = {},
  number = {},
  pages = {187-193},
  doi = {10.1109/PerComWorkshops53856.2022.9767498}
}
```

# References

1. https://dx.doi.org/10.1109/PerComWorkshops53856.2022.9767498
2. https://dx.doi.org/10.1109/TCC.2020.2968443
3. https://github.com/esimov/pigo-openfaas
4. https://github.com/openfaas/faas-cli
5. https://www.balena.io/open/