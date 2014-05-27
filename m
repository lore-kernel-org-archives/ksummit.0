Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 457E19CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 May 2014 22:43:22 +0000 (UTC)
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A8219201A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 May 2014 22:43:21 +0000 (UTC)
Received: by mail-vc0-f179.google.com with SMTP id im17so11537231vcb.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 May 2014 15:43:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4700397.FLxRVChBLf@vostro.rjw.lan>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 27 May 2014 15:43:00 -0700
Message-ID: <CALCETrVbGotFDSniVMDfYdP7EbQ0JQ04M1ypA9KYbQRzZ4AiQQ@mail.gmail.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 27, 2014 at 3:57 PM, Rafael J. Wysocki <rjw@rjwysocki.net> wrot=
e:
> On Tuesday, May 27, 2014 07:27:06 PM Luk=C3=A1=C5=A1 Czerner wrote:
>> On Sat, 24 May 2014, Wolfram Sang wrote:
>
> [cut]
>
>> >
>> > Paid reviewers/maintainers (selected people, no hiring offers). The
>> > number of developers increases faster than the number of quality
>> > keepers. So, the latter should be given the chance to focus on it, if
>> > they want to.
>>
>> That does not make much sense to me. In order to review the code you
>> need to understand it and if you already understand the code, you
>> can write it as well. I do not think that having dedicated reviewers
>> is realistic in the long run.
>
> That's correct and dedicated reviewers who don't really write code will
> become less and less reliable over time.  So they will have to be people
> who actively work on the code *and* review patch submissions from other
> developers.
>
>> However encouraging reviewers by treating reviewed-by tag with equal
>> "respect" as signed-off-by seems like the better way.
>
> I would even argue that it should be treated more seriously than sign-off=
s.
> After all, there are more patches applied (and all of them are signed-off
> by at least one person) than there are commits with the Reviewed-by tag.

Does Signed-off-by mean something different from "I affirm what the
DCO says" these days?

--Andy
