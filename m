Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1AA76EA4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 18:56:53 +0000 (UTC)
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0122.outbound.protection.outlook.com [104.47.32.122])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7032D7FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 18:56:52 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Tue, 18 Sep 2018 18:56:50 +0000
Message-ID: <20180918185649.GO3821@sasha-vm>
References: <20180917115916.37fd5388@coco.lan>
	<CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<5b434160-07d9-4071-ac77-9d64ea69c980@email.android.com>
	<CAKMK7uExDUFjXcX6zPmZMjse6gf00bO-uBsjiWMk+vqjV2MEvQ@mail.gmail.com>
	<1537269419.3424.1.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA24@USCULXMSG01.am.sony.com>
	<20180918165917.GA9728@chatter>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA99@USCULXMSG01.am.sony.com>
	<20180918173148.GB9728@chatter> <20180918174913.GA22988@kroah.com>
In-Reply-To: <20180918174913.GA22988@kroah.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <B75514FCDF67DA4FA469CA639AB60FF1@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "James.Bottomley@hansenpartnership.com"
	<James.Bottomley@hansenpartnership.com>,
	"mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
	"Tim.Bird@sony.com" <Tim.Bird@sony.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Tue, Sep 18, 2018 at 07:49:13PM +0200, Greg KH wrote:
>On Tue, Sep 18, 2018 at 01:31:48PM -0400, Konstantin Ryabitsev wrote:
>> So, what if we imagine that there's an imaginary web tool that does this=
:
>>
>> 1. Allows people to generate an account
>> 2. Verifies their email address
>> 3. Instructs people how to generate a patch or series of patches
>> 4. Gives a way to upload generated patches
>> 5. Runs checkpatch to make sure there are no errors
>> 6. Runs get_maintainer to find out where the patch(es) should be sent to
>> 7. (Does more imaginary magic, such as looking up message-id references)
>> 8. Mails it out
>
>That last step might be hard, you have to "mail it out" to look like it
>came from the original author, right?  Then all crud breaks out as you
>can't deliver an email from "sony.com" successfully.

Why do we need to make it look like it came from the original author? If
we include a "From:" field in the patch then git will do the right
thing, and if we just Cc the original author then any
questions/reviews/comments will be directed to the author without going
through this system.

--
Thanks,
Sasha=
