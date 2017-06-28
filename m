Return-Path: <stephen@networkplumber.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1E268722
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 03:54:56 +0000 (UTC)
Received: from mail-pg0-f43.google.com (mail-pg0-f43.google.com [74.125.83.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 993BF152
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 03:54:55 +0000 (UTC)
Received: by mail-pg0-f43.google.com with SMTP id u62so25180084pgb.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 20:54:55 -0700 (PDT)
Date: Tue, 27 Jun 2017 20:54:43 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Message-ID: <20170627205443.1de0f0d8@xeon-e3>
In-Reply-To: <CAB=NE6VS9iA+VN_-QOL1f8WGO-wrcQP5n+W=R6yjwQ=_OO3Sfg@mail.gmail.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
	<CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
	<CAOesGMimO1rYi7RpcsZYX9uDgWUJdv4XSgQR+RJaaS2qt_FCLw@mail.gmail.com>
	<CA+55aFxDyj-9koeDemqUvxYrLyKxV8Xggy=ad_EQmGrfEef_gg@mail.gmail.com>
	<20170627231011.GA10543@mail.hallyn.com>
	<CAB=NE6Wd9WWCyRzO=TjaTiPNruSwt24G3BD2qTuUue8B3kRX5g@mail.gmail.com>
	<CA+55aFzgumwC-HqDpsj-OEVoQdhcnRo9Fh2Kg7SMPL6+wP4ctg@mail.gmail.com>
	<CAB=NE6VS9iA+VN_-QOL1f8WGO-wrcQP5n+W=R6yjwQ=_OO3Sfg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Cristina Moraru <cristina.moraru09@gmail.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 27 Jun 2017 17:26:03 -0700
"Luis R. Rodriguez" <mcgrof@kernel.org> wrote:

> On Tue, Jun 27, 2017 at 5:14 PM, Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > The config options that don't enable drivers, but enable particular
> > behavior - *those* are actually the nastiest ones.  
> 
> Ah yes... addressing this with the meta thingy would certainly be
> nice. It can help close one of the big gaps and flaws of
> localmodconfig.
> 

I also run into issues with things like USB sticks with FAT filesystem.
If no stick has been plugged in the module isn't loaded, and therefore the module
doesn't get included. This is a general problem with hot pluggable hardware.
