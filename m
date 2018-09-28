Return-Path: <tglx@linutronix.de>
Date: Fri, 28 Sep 2018 12:45:39 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: =?ISO-2022-JP?Q?SZ_Lin_=28=1B$BNS=3EeCR=1B=28J=29?= <szlin@debian.org>
In-Reply-To: <20180927152512.GA3531@localhost>
Message-ID: <alpine.DEB.2.21.1809281230180.2004@nanos.tec.linutronix.de>
References: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
	<CACRpkdYk1JKEQ=bumrxRk1eJ97xkQti8E1MRJ_xxen+dZ1a1Xw@mail.gmail.com>
	<CAK8P3a0a=eAwAg5i6z-5Hs56BXKP3CSsv2383zuMh6TrrDPwug@mail.gmail.com>
	<CACRpkdYi66Lgq7OAGchQyfqEUUGVKV9m3YzL6t_nS+Hm0G2rRg@mail.gmail.com>
	<20180911105233.GA8018@sirena.org.uk>
	<CACRpkdbcRCBFoBa88qKWHQMW-dTppH8pxxnUZZibrtUwtohgLg@mail.gmail.com>
	<TY2PR0101MB2526376DEFC241B754A19A6AE21C0@TY2PR0101MB2526.apcprd01.prod.exchangelabs.com>
	<20180927152512.GA3531@localhost>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1661510842-1538131539=:2004"
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Lukasz Majewski <lukma@denx.de>, Ksummit-discuss@lists.linuxfoundation.org,
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1661510842-1538131539=:2004
Content-Type: text/plain; charset=ISO-2022-JP

On Thu, 27 Sep 2018, SZ Lin (林上智) wrote:

> > And this is good stuff, it's rock solid at this point. I just wish and
> > hope that they really invest in using the very latest kernels also for
> > these elder boards even though I rarely hear from them on the mailing
> > lists.
> 
> To have long-term maintenance kernel is very important for industrial application,
> that is why Moxa joined CIP [1].

That's not the question here. The question here is how do we keep old
hardware supported in the latest kernel and who makes sure that it is
supported.

CIP is trying to keep a dead kernel in zombie state for a very long time
and as recent events (the whole speculation mess) have shown this is not
really a sane approach because backporting of invasive security fixes is
anything between impossible, incomplete and outright dangerous.

So for events like Meltdown/Spectre/L1TF the right answer is to be able to
switch to a recent kernel on that old hardware, but that requires that the
old hardware is still properly supported.

That's what people are asking here: What to do with old hardware support in
the latest kernel. If it's just bitrotting because nobody cares, then we
rather remove it. If it should be kept supported, then someone has to step
up and make sure it is, manufacturer being the obvious candidate.

Thanks,

	tglx




--8323329-1661510842-1538131539=:2004--
