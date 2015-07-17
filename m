Return-Path: <James.Bottomley@Hansenpartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 39BA83EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 17:43:58 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C4666121
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 17:43:57 +0000 (UTC)
In-Reply-To: <20150717133712.42c82add@gandalf.local.home>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<1437063875.18768.59.camel@HansenPartnership.com>
	<20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
From: James Bottomley <James.Bottomley@Hansenpartnership.com>
Date: Fri, 17 Jul 2015 20:43:12 +0300
To: Steven Rostedt <rostedt@goodmis.org>,Jonathan Corbet <corbet@lwn.net>
Message-ID: <22243b88-029f-4560-9e13-0b7001ed14ec@email.android.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
	Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On July 17, 2015 8:37:12 PM GMT+03:00, Steven Rostedt <rostedt@goodmis.org> wrote:
>On Fri, 17 Jul 2015 10:11:51 -0600
>Jonathan Corbet <corbet@lwn.net> wrote:
>
>
>> Over on linux-kernel, I just saw a newish developer being politely
>told
>> that a patch was unacceptable because the local variable declarations
>> were not in reverse-Christmas-tree order.  That's not in CodingStyle,
>and
>> it's certainly not a universal rule in the kernel; it's just one of
>those
>> things you have to know if you wander into certain scary
>neighborhoods.
>
>As I know a few maintainers that like the "reverse-xmas-tree" order,
>perhaps we could add that to CodingStyle in a section of:
>
>--- Some Maintainer's prefer these styles ---
>
> These are some extra styles that maintainers prefer. Some are strict
> about these, others may not care. It doesn't hurt to add them.
>
>
>Because things like reverse x-mas tree order isn't something people are
>against doing. But some may not care if you do or don't. So listing
>all the things that a few maintainers share, may be good.
>
>Of course you hit a brick wall when there's two types of styles that
>maintainers disagree on.
>
>
>/*
> * What is the question?
> * To add a space at the top of a comment?
> */
>
>/* Or not to add a space at the top of a comment?
> * That is the question!
> */
>
>
>But really, when there's small things like indentation that is
>submitted and I don't like, I don't even bother telling the author,
>I'll just fix it myself and note in the change log "fixed up
>whitespace".

If you do that, and I get 500 coccinelle generated patches for SCSI switching the includes to reverse Christmas tree one file at a time, I'm afraid I'll have to shoot you.

James

>-- Steve
>
>_______________________________________________
>Ksummit-discuss mailing list
>Ksummit-discuss@lists.linuxfoundation.org
>https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
