Return-Path: <stephen@networkplumber.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C2779B68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 16:35:16 +0000 (UTC)
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 41F2BFC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 16:35:16 +0000 (UTC)
Received: by mail-pf0-f178.google.com with SMTP id q86so15495156pfl.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 09:35:16 -0700 (PDT)
Date: Wed, 12 Jul 2017 09:35:07 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170712093507.4482f3fc@xeon-e3>
In-Reply-To: <CA+55aFySG7NAvsphb76J-M2YuM8_4wQ8Cvufu24Gb=EhpaoKTg@mail.gmail.com>
References: <10144.1499863410@warthog.procyon.org.uk>
	<12463.1499871476@warthog.procyon.org.uk>
	<20170712082139.17cfd33a@xeon-e3>
	<CA+55aFySG7NAvsphb76J-M2YuM8_4wQ8Cvufu24Gb=EhpaoKTg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Getting better/supplementary
 error info back to userspace
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 12 Jul 2017 09:19:55 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> On Wed, Jul 12, 2017 at 8:21 AM, Stephen Hemminger
> <stephen@networkplumber.org> wrote:
> >
> > Netlink has recently got extended error reporting, still not used widely
> > and library support is lacking in most places.  
> 
> Yeah, and that "not widely supported and library support is lacking"
> is always going to be an issue with anything like that.
> 
> Along with internationalization, which is a whole nasty set of issues
> in itself with error messages.
> 
> It's not going to happen, in other words. The problems are basically
> insurmountable, and the thing it fixes will always be some special
> case that doesn't much matter.
> 
> Every time it comes up it is because some developer found one case
> that they were hunting down and it annoyed them, and the developer
> went "if only it had included more information and it would have been
> obvious".
> 
> But every time it comes up people ignore this basic issue:
> 
>      [torvalds@i7 linux]$ git grep -e '-E[A-Z]\{4\}' | wc -l
>      182523
> 
> 
> Give it up. It's really is a horrible idea for so many reasons.

For netlink, it isn't so bad. 80% of the usage is in iproute2 and
therefore getting tool support for the usual cases isn't too hard.

I fear kernel developers think at too low a level. They think if glibc
and/or 1st level command can handle an extension, their work is done.
But in the modern world, there are many scripts and layers above that.
For the networking case, the worst case examples are things where configuration
is done in stuff like some layer on top of Openstack, in python code
which is scripting ip commands, which is talking to the kernel. Good luck
on trying to get any meaningful error handling out of that dog pile.
