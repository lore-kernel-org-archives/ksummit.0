Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0AAF8BC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 23:28:09 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0173.hostedemail.com
	[216.40.44.173])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 3E7BA1DCA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 23:28:06 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave06.hostedemail.com (Postfix) with ESMTP id 4F5541727AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 18:42:18 +0000 (UTC)
Date: Wed, 15 Jul 2015 14:42:12 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jiri Kosina <jkosina@suse.com>
Message-ID: <20150715144212.235f7687@gandalf.local.home>
In-Reply-To: <alpine.LNX.2.00.1507131027000.7522@pobox.suse.cz>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
	<1436599873.2243.10.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1507131027000.7522@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Josh Boyer <jwboyer@fedoraproject.org>,
	Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] dev/maintainer workflow security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 13 Jul 2015 10:32:06 +0200 (CEST)
Jiri Kosina <jkosina@suse.com> wrote:

> On Sat, 11 Jul 2015, James Bottomley wrote:
> 
> > >   - personal security (keep commit credentials secure from theft)
> > 
> > This second one is a bit of a red herring:  Assuming you did steal my
> > credentials, how would you use them without being detected?
> 
> If the credentials can be used both to push to ra.kernel.org and to access 
> your "local" copy of the GIT repo (on your notebook / desktop / storage), 
> I can just push the malicious commit (*) to both repos and you might not 
> notice immediately (because you wouldn't get non-fast-forward hint from 
> git).

Actually, I do development on a different box than I push with. Thus,
if someone did modify both that box and my korg repo, I would notice a
problem as soon as I push my development box to the box I push with.

Now the attacker would need to compromise that development box too.

-- Steve
