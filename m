Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7B035414
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 18:30:05 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0089.hostedemail.com
	[216.40.44.89])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5DD9915A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 18:30:04 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id EB931B30F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 17:53:16 +0000 (UTC)
Date: Fri, 17 Jul 2015 13:53:13 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@Hansenpartnership.com>
Message-ID: <20150717135313.6b917e1a@gandalf.local.home>
In-Reply-To: <22243b88-029f-4560-9e13-0b7001ed14ec@email.android.com>
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
	<22243b88-029f-4560-9e13-0b7001ed14ec@email.android.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
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

On Fri, 17 Jul 2015 20:43:12 +0300
James Bottomley <James.Bottomley@Hansenpartnership.com> wrote:


> >--- Some Maintainer's prefer these styles ---
> >
> > These are some extra styles that maintainers prefer. Some are strict
> > about these, others may not care. It doesn't hurt to add them.
> >



> 
> If you do that, and I get 500 coccinelle generated patches for SCSI switching the includes to reverse Christmas tree one file at a time, I'm afraid I'll have to shoot you.

I'll remember to wear my bullet proof vest coming to KS.

Should stress that just some people prefer them. Heck, we can teach
checkpatch.pl to look at what file is being modified and see what
formats the maintainer of the file wants. :-)

-- Steve
