Return-Path: <SRS0=BRSq=6W=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8A383927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jul 2017 13:02:42 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CBE55175
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jul 2017 13:02:41 +0000 (UTC)
Date: Wed, 19 Jul 2017 09:02:39 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170719090239.39f031c5@gandalf.local.home>
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

Note a lot of those -E* are not going to user space. Some are in
comments, and some are used internally. I use them to pass back
information to other kernel only routines, as some errors are more
critical than others.

> 
> Give it up. It's really is a horrible idea for so many reasons.
> 

One reason that this has never taken off is that there is no good
infrastructure in doing it. I wouldn't tell people to give it up, but
I don't see a one size fits all. In tracing, we have ways to pass
detailed errors back to user space. But that's probably one of the
easier cases as we have defined methods to do so.

A more generic approach would require a lot more planning, and making
it simple to use both in user space and in the kernel. If it is too
complex in either place, it will be ignored.

-- Steve
