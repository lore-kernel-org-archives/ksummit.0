Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EAE3DBCC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:37:54 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0081.hostedemail.com
	[216.40.44.81])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 8C6B21DCA4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:37:54 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 8D28111A212
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:37:53 +0000 (UTC)
Date: Mon, 13 Jul 2015 12:37:50 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Alexey Dobriyan <adobriyan@gmail.com>
Message-ID: <20150713123750.52d8a14d@gandalf.local.home>
In-Reply-To: <CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
References: <201507130038.01474.PeterHuewe@gmx.de>
	<CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 13 Jul 2015 12:47:23 +0300
Alexey Dobriyan <adobriyan@gmail.com> wrote:


> Newbies should not write documentation because they, by definition,
> have little knowledge of the code. It will lead to many, many useless
> and redundant comments like below whose only purpose is stealing
> vertical whitespace:

I agree that newbies shouldn't write documentation. But maybe what they
can do is to question what a function does. And perhaps poke the
maintainer (or author of said function) to write something that
explains that function (only for non-static functions).

Now, I say "newbies" but I would really mean experienced developers
that are new to a subsystem. We don't need silly questions. Something
more on the line of one experienced kernel developer reading some code
of the kernel they have no idea about, and if they can't figure out
what a function does, ask the question to the author. Perhaps we can
get better documentation of internal interfaces out of it.

There's been times where I look at other subsystems and wonder WTF a
function is suppose to do. Perhaps I need to start poking the author of
that code to explain it.

-- Steve
