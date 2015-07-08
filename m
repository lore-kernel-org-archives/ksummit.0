Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DF013BD5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 16:01:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0038.hostedemail.com
	[216.40.44.38])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7195014F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 16:01:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave06.hostedemail.com (Postfix) with ESMTP id AE5FB174198
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 15:42:42 +0000 (UTC)
Date: Wed, 8 Jul 2015 11:42:39 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jiri Kosina <jkosina@suse.com>
Message-ID: <20150708114239.24eb3326@gandalf.local.home>
In-Reply-To: <alpine.LNX.2.00.1507081704380.10183@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
	<20150707225223.GG12491@dtor-ws> <20150708021619.GC3102@kroah.com>
	<alpine.LNX.2.00.1507080957360.10183@pobox.suse.cz>
	<20150708145910.GA11945@kroah.com>
	<alpine.LNX.2.00.1507081704380.10183@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] services needed from kernel.org
 infrastructure
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 8 Jul 2015 17:08:50 +0200 (CEST)
Jiri Kosina <jkosina@suse.com> wrote:

> Yes, my main point really was that I personally would find it super-nice 
> to just mark particular branches in my kernel.org repositories as "send 
> notifications for these", and author (and anyone else in "-by:" lines) 
> would automatically receive nice notification once commit appears there. 
> Without any need of wrapping simple git-am + git push with more and more 
> bloated scripting.

What about the opposite. Have people subscribe to git repos and get
emails when a patch they authored is pushed to it.

I subscribe to Linus's tree, but I get all commits. I just have a
filter that only sends me anything that has my SoB, and the rest goes
to /dev/null. But it does make my fetchmail waste a lot of time pulling
in emails that mostly get discarded. It would be nice to only see those
that I'm interested in.

I wouldn't expect a korg to parse the tags, but perhaps it could just
send people emails that they authored, and want a reply to.

Note, if you are worried about security, this could all be done on an
isolated machine that doesn't have any inside access to korg itself. As
it only needs to do a git pull and parse the content. Any mischievous
scripts would only get access to a box that has nothing but a dummy
user account and a bunch of git repos that it pulls in but never
pushes, and also a way to send emails.

-- Steve
