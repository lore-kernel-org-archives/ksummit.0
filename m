Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C036B1076
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 17:31:11 +0000 (UTC)
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6318179F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 17:31:11 +0000 (UTC)
Received: by mail-it0-f52.google.com with SMTP id p79-v6so4419093itp.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 10:31:11 -0700 (PDT)
Date: Tue, 18 Sep 2018 13:31:48 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Tim.Bird@sony.com
Message-ID: <20180918173148.GB9728@chatter>
References: <20180917100413.22eac00d@coco.lan> <2072478.UYspZ1xLTN@avalon>
	<20180917115916.37fd5388@coco.lan>
	<CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<5b434160-07d9-4071-ac77-9d64ea69c980@email.android.com>
	<CAKMK7uExDUFjXcX6zPmZMjse6gf00bO-uBsjiWMk+vqjV2MEvQ@mail.gmail.com>
	<1537269419.3424.1.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA24@USCULXMSG01.am.sony.com>
	<20180918165917.GA9728@chatter>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA99@USCULXMSG01.am.sony.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA99@USCULXMSG01.am.sony.com>
Cc: James.Bottomley@hansenpartnership.com, mchehab+samsung@kernel.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 18, 2018 at 05:08:02PM +0000, Tim.Bird@sony.com wrote:
>> https://urldefense.proofpoint.com/v2/url?u=https-
>> 3A__korg.wiki.kernel.org_userdoc_mail-23sending-5Foutgoing-
>> 5Fmail&d=DwICAg&c=fP4tf--1dS0biCFlB0saz0I0kjO5v7-
>> GLPtvShAo4cc&r=rUvFawR4KzgZu1gSN5tuozUn7iTTP0Y-
>> INWqfY8MsF0&m=90EMZrRfkvlzWBNtrJ8QnHDj3-EwehEZhQiC5YJY-
>> Uk&s=xtUgBLn5bjLazevAEIdAoHAGclbgin-D9Cek15hsuZk&e=

Ick.

>Thank you for the offer.  However, while that's a solution that might 
>work
>for me (modulo my ability to punch my way through the firewall to that mail
>server), it doesn't scale or help my colleagues at Sony who I'm trying to
>remove barriers for as well.   I'm senior enough at Sony to have a somewhat
>different situation than other Sony Linux developers, however  I intentionally
>work through the IT department and use commonly provided tools here
>in order to 1) understand the hurdles other developers at Sony have, and
>2) work on general solutions.

Ah, I understand your situation better now.

So, what if we imagine that there's an imaginary web tool that does 
this:

1. Allows people to generate an account
2. Verifies their email address
3. Instructs people how to generate a patch or series of patches
4. Gives a way to upload generated patches
5. Runs checkpatch to make sure there are no errors
6. Runs get_maintainer to find out where the patch(es) should be sent to
7. (Does more imaginary magic, such as looking up message-id references)
8. Mails it out

Would that be useful or solve any problems? Or would that, on the 
contrary, create more problems than it solves?

-K
