Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5803C681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 03:44:58 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D20D22011A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 03:44:57 +0000 (UTC)
Date: Fri, 9 May 2014 20:44:47 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20140510034447.GA8451@thin>
References: <CA+5PVA6oTQy5j1XyQG_h6Vk1kW8UrA_j61ouPfm_kvZMQ9ZqEA@mail.gmail.com>
	<1399066024.2202.72.camel@dabdike>
	<CA+5PVA7VQzdMRuMARmAR=c6MnDg-bFg16Hgk=bCNzKmokRUAPQ@mail.gmail.com>
	<CALCETrVZJ5swLixykH_qn4K7GDDRqKkXtPeJqdM1LXToRW+uyA@mail.gmail.com>
	<20140506171807.GA20776@cloud>
	<CALCETrUDEi=Q2k_CMZGdizfUkTpObKrggP-XPsCOBndRGuX7tQ@mail.gmail.com>
	<536D1CCE.3060708@zytor.com>
	<CALCETrVr=Tv+LyTRPg-ntTJPKtO3aQWEoDEVSwCm5RpOStkWPA@mail.gmail.com>
	<1399681415.2166.82.camel@dabdike.int.hansenpartnership.com>
	<CALCETrXuN3N8OuhFFteri2QMCCAey7LHU08A=SNQZGR6qSxv=g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrXuN3N8OuhFFteri2QMCCAey7LHU08A=SNQZGR6qSxv=g@mail.gmail.com>
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Julia Lawall <julia.lawall@lip6.fr>, Darren Hart <darren@dvhart.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 09, 2014 at 05:38:49PM -0700, Andy Lutomirski wrote:
> We're almost at the point where it would be reasonable to shove
> basically every service on a system into a user namespace, in which
> case, barring bugs, you shouldn't be able to own the kernel.  I wonder
> if this might do pretty much exactly what you want.

We should absolutely do this, and it'll make a big difference.  However,
"barring bugs" is a pretty big bar; in practice, it's probably easier to
get from user->kernel than to get from user->root, just because you can
do the former from any process that can make system calls.  We're not
anywhere close to done with fixing system call vulnerabilities.

> Essentially, you'd mount your filesystems, make a new userns, move all
> network devices into a new netns owned by that userns, unshare the
> mount namespace, and somehow get systemd or whatever other init
> program you're using to play along.

systemd makes it rather easy to configure a service for this kind of
namespace isolation.  You can, for instance, put services that don't
need the network in a network namespace that only includes localhost.  I
suspect that far more services will take advantage of that than will
attempt to configure an equivalent isolation setup manually.

- Josh Triplett
