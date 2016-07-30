Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3A9912C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 03:02:57 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0094.hostedemail.com
	[216.40.44.94])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B3991AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 03:02:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id B236F1844CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 02:55:05 +0000 (UTC)
Date: Fri, 29 Jul 2016 22:55:01 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160729225501.607e2ae9@grimm.local.home>
In-Reply-To: <1469815046.2330.13.camel@HansenPartnership.com>
References: <20160729131151.GF4340@x> <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
	<alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
	<ECADFF3FD767C149AD96A924E7EA6EAF053BB894@USCULXMSG02.am.sony.com>
	<1469815046.2330.13.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Christoph Lameter <cl@linux.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [ANNOUNCE] git-series: track changes to a
 patch series over time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 29 Jul 2016 10:57:26 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:


> I do this too, but I also work with the diff when moving hunks.  What I
> do is:
> 
> git checkout <removal commit>
> git show <removal commit> > tmp.diff
> vi tmp.diff so it only has the hunks I want to remove
> patch -p1 -R < ~/tmp.diff
> git commit --amend -a
> git checkout <add commit>
> patch -p1 < ~/tmp.diff
> git commit --amend -a
> 
> It's a bit cumbersome, but you can script it.  If there are better ways
> to do it, I'm interested.

I do that quite a lot too. But I also use a git quilt mix a bit.

When I get a patch that is based on my work and fails to apply, I do:

quilt import /tmp/ftrace.patch
quilt push -f

see what breaks, and fix it up. Sometimes I have to go and change the
change log, or subject, especially if the patch is from a non native
English speaker, and the change log simply doesn't make much sense
(unless you know what the patch is already doing). Then:

quilt refresh
do-git-am.pl patches/ftrace.patch

Where do-git-am.pl is my script that will add Cc's and Link: tags.

-- Steve
 
