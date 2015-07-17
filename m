Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E954441C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 18:05:56 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9AC24288
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 18:05:56 +0000 (UTC)
Message-ID: <55A94400.8050004@roeck-us.net>
Date: Fri, 17 Jul 2015 11:05:52 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	Steven Rostedt <rostedt@goodmis.org>, Jonathan Corbet <corbet@lwn.net>
References: <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon>	<20150709193718.GD9169@vmdeb7>
	<20150710143641.GW4341@mwanda>	<20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com>	<20150711000034.GU111846@vmdeb7>
	<20150711001348.GA30675@kroah.com>	<20150711055441.GA6316@sudip-PC>	<20150715212043.775be5d2@gandalf.local.home>	<20150716132551.GH4039@sirena.org.uk>	<20150716094720.2bf9f5ac@gandalf.local.home>	<55A7C7FE.6000604@sonymobile.com>
	<20150716094125.16cdda73@lwn.net>	<1437063875.18768.59.camel@HansenPartnership.com>	<20150717101151.5d5bc86d@lwn.net>	<20150717133712.42c82add@gandalf.local.home>
	<22243b88-029f-4560-9e13-0b7001ed14ec@email.android.com>
In-Reply-To: <22243b88-029f-4560-9e13-0b7001ed14ec@email.android.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On 07/17/2015 10:43 AM, James Bottomley wrote:
>
>>
>>
>> But really, when there's small things like indentation that is
>> submitted and I don't like, I don't even bother telling the author,
>> I'll just fix it myself and note in the change log "fixed up
>> whitespace".
>
> If you do that, and I get 500 coccinelle generated patches for SCSI switching the includes to reverse Christmas tree one file at a time, I'm afraid I'll have to shoot you.
>
I wanted to comment that I tend to do the same, but given your reply
I'd rather be silent.

On a side note, sending an e-mail with more than 80 (or maybe 72)
columns per line may result in an angry e-mail from some maintainers.

Guenter
