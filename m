Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EB2B2D54
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 19:53:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 987F5A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 19:53:57 +0000 (UTC)
Date: Fri, 7 Sep 2018 16:53:50 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Justin Forbes <jmforbes@linuxtx.org>
Message-ID: <20180907165350.44039a6a@coco.lan>
In-Reply-To: <CAFxkdAoiQMuzEq1Dv0=fO6uB2fLcc+0Wb+zuVvSFsAweROfhQQ@mail.gmail.com>
References: <17533.1536166384@warthog.procyon.org.uk>
	<nycvar.YFH.7.76.1809052132190.15880@cbobk.fhfr.pm>
	<CAFxkdAp6FxwT5XO9C_4_naSTEzs4iFosj+ijbK0rfW8FsyuMsA@mail.gmail.com>
	<32341.1536178494@warthog.procyon.org.uk>
	<CAFxkdAoiQMuzEq1Dv0=fO6uB2fLcc+0Wb+zuVvSFsAweROfhQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James.Bottomley@hansenpartnership.com, Peter Jones <pjones@redhat.com>,
	joeyli.kernel@gmail.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel lockdown and secure boot
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 5 Sep 2018 15:34:04 -0500
Justin Forbes <jmforbes@linuxtx.org> escreveu:

> On Wed, Sep 5, 2018 at 3:14 PM, David Howells <dhowells@redhat.com> wrote:
> > Justin Forbes <jmforbes@linuxtx.org> wrote:
> >  
> >> Lockdown is a config option on it's own, just also add a separate
> >> config option option to enable lockdown on UEFI secure boot.  
> >
> > The patchset has that already (CONFIG_LOCK_DOWN_IN_EFI_SECURE_BOOT).
> >
> > One of the issues appears to be that we're making it boot-time conditional at
> > all.  If I understand him correctly, Linus seems to want us to make everything
> > locked down at compile time or not at all.
> >  
> 
> The last push attempt dropped that patch and did have the compile time
> (CONFIG_LOCK_DOWN_MANDATORY) as well as an option for command line
> enabling with lockdown=1 (CONFIG_LOCK_DOWN_KERNEL).  It just didn't
> have an option for triggering off of UEFI Secure Boot.   As a distro,
> running   CONFIG_LOCK_DOWN_MANDATORY isn't much of an option. We ran
> the 4.17 development series in rawhide with CONFIG_LOCK_DOWN_KERNEL,
> and no one noticed that their secure boot was off.  

Heh, I actually had to turn secure boot off due to that :-)

(long story short, it was on an Intel 8 gen CPU with Radeon GPU on it,
with required 4.17 + DRM for 4.18 in order to detect my 3 monitors,
so I had to build my own kernel, not signed by Red Hat).

Thanks,
Mauro
