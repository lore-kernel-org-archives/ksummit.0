Return-Path: <gregkh@linuxfoundation.org>
Date: Tue, 11 Sep 2018 21:33:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Lukasz Majewski <lukma@denx.de>
Message-ID: <20180911193308.GA4429@kroah.com>
References: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
	<CACRpkdYk1JKEQ=bumrxRk1eJ97xkQti8E1MRJ_xxen+dZ1a1Xw@mail.gmail.com>
	<CAK8P3a0a=eAwAg5i6z-5Hs56BXKP3CSsv2383zuMh6TrrDPwug@mail.gmail.com>
	<CACRpkdYi66Lgq7OAGchQyfqEUUGVKV9m3YzL6t_nS+Hm0G2rRg@mail.gmail.com>
	<20180911113725.5d91b945@jawa>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180911113725.5d91b945@jawa>
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Ksummit-discuss@lists.linuxfoundation.org,
	Jonas Jensen <jonas.jensen@gmail.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Deprecation / Removal of
 old hardware support
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 11, 2018 at 11:37:25AM +0200, Lukasz Majewski wrote:
> In the kernel community we pose a lot of attention to security (for
> example the prompt reaction on meltdown/spectre), but in the same time
> we tend to forget about the "long lived" devices and force their
> maintainers to use 2.6.x kernels..... (or even 2.4.x).

We care, but really, how much can we do here?

I've been working a lot with the Adroid ecosystem to try to help fix
their bad habits of "grab a random kernel and ship it and never update
it" by providing longer lived kernels that they can constantly update
their devices to.

But their lifetimes is much shorter compared to yours, and I have no
insight into what kernels are being used, what configurations you all
care about, and how long you need/want them updated.

Working with really old kernels like you have, without hardware
available to test is a hard task.  If your hardware is in a system like
kernelci, then you can be sure that any new kernel will work properly
with your system and then you might not want to have to stay with really
old kernels that no one can maintain :)

There's a Linux Foundation project, "CIP" that wants to maintain kernels
for devices like what you are making for 20+ years.  They are having the
problems of not knowing exactly what platforms they wish to support, but
their goal is good, hopefully they eventually nail something down and we
can work together.  Perhaps you should contact them to try to help solve
this issue for everyone?

thanks,

greg k-h
