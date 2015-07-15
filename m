Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4F23ABB3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 19:41:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0116.hostedemail.com
	[216.40.44.116])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id E0EBB1DCD1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 19:41:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave03.hostedemail.com (Postfix) with ESMTP id C14E528FC19
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 19:41:54 +0000 (UTC)
Date: Wed, 15 Jul 2015 15:41:51 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20150715154151.34959ffc@gandalf.local.home>
In-Reply-To: <20150713205125.GA26074@kroah.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<20150713205125.GA26074@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 13 Jul 2015 13:51:25 -0700
Greg KH <greg@kroah.com> wrote:


> So I don't think that a manditory 2 week waiting period is going to help
> out much here, sorry.

The exact same thing can be said about having patches brew in -next for
2 weeks (or whatever) before going to Linus. If issues are not caught
in Linus's tree after two weeks, I highly doubt two weeks in -next will
be any better.

-- Steve
