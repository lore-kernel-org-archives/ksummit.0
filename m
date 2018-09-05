Return-Path: <gregkh@linuxfoundation.org>
Date: Wed, 5 Sep 2018 16:31:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20180905143126.GA15573@kroah.com>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<nycvar.YFH.7.76.1809042305140.15880@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1809042305140.15880@cbobk.fhfr.pm>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 04, 2018 at 11:12:38PM +0200, Jiri Kosina wrote:
> On Tue, 4 Sep 2018, Laura Abbott wrote:
> 
> > I also realize Greg is probably reading this with a very skeptical look 
> > on his face so I'd be interested to hear from other distro maintainers 
> > as well.
> 
> As a SUSE distro kernel maintainer, I'd really like to participate if any 
> such discussion is happening.
> 
> Namely:
> 
> - we're having a lot of internal discussions about how to adjust our 
>   processess to the changes happening in -stable tree process and patch 
>   acceptance criteria
> 
> - it's becoming more and more apparent (and even Greg stated it in the few 
>   months old thread Sasha referred to) that stable tree is not really 
>   intended for distros in the first place; it might be useful to have this 
>   clarified a bit more.
> 
>   Namely: it's sort of evident that most of the major distros are running 
>   their own variation of the stable tree. Would it be beneficial to 
>   somehow close the feedback loop back from the distros to the stable 
>   tree? Or is total disconnect between the two worlds inevitable and 
>   desired?

I don't recall ever saying that the stable tree is "not for distros",
given that I know many distros rely on it (Arch, Fedora, openSUSE,
Gentoo, CoreOS, Debian, Android, etc.)  Perhaps I said "not for an
'enterprise' distro?" given your 'contraints' that you all put on your
trees that I do not have?

I strongly recommend any user use a distro tree over the stable tree,
but if you are distro, you need to pick what you want to base on
depending on your requirements (new hardware, stable internal abi, SoC
madness, etc.)

I do take "this is not working for us" complaints from distros really
seriously, but so far all I hear from SuSE is the usual "you are taking
too many patches" which we have already covered elsewhere in this thread :)

thanks,

greg k-h
