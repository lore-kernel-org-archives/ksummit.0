Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5314A10A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:06:20 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0119.outbound.protection.outlook.com [104.47.33.119])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9307F786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:06:19 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Jiri Kosina <jikos@kernel.org>
Date: Wed, 5 Sep 2018 14:06:16 +0000
Message-ID: <20180905140615.GH16300@sasha-vm>
References: <20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<nycvar.YFH.7.76.1809051437300.15880@cbobk.fhfr.pm>
	<20180905130512.GA5601@kroah.com>
	<nycvar.YFH.7.76.1809051509100.15880@cbobk.fhfr.pm>
In-Reply-To: <nycvar.YFH.7.76.1809051509100.15880@cbobk.fhfr.pm>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <CB56963A7C0B8843860A925493155DC7@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 05, 2018 at 03:15:25PM +0200, Jiri Kosina wrote:
>On Wed, 5 Sep 2018, Greg KH wrote:
>
>> For these specific ones, I trusted that the maintainer of the subsystem
>> knew what they were doing when they marked them for the stable tree.
>
>And do you honestly think they should be marked for stable tree in the
>first place?

If you can't trust a maintainer's judgement about his very own subsystem
then you're shit out of luck. In this scenario Greg's opinion weighs
less (IMO) than the maintainer, so if Greg was asked to include them
then there better be a solid reason to challange that request.

>> Which is what we do in kernel development, we trust others that their
>> stewardship of their code subsystems is in the best interest of their
>> users.
>
>Sure, I wholeheartedly agree. For Linus' tree, all the web of trust is
>there so that changes can be propagated up the maintainership structure,
>and we trust the maintainers and developers that they did all the
>development and testing as well as they possibly could, and that eventual
>bugs in the code will be responsibly fixed.
>
>For stable, there is another aspect that needs to be trusted -- that the
>relevance for stable has been properly considered, so that we ideally
>avoid the need for "eventual bugs will be fixed" much more pro-actively
>than in Linus' tree (that's "stable", right?).
>
>And I think we simply could improve there (well, again, this all very much
>depends on the target audience I guess).
>
>*Especially* with the automatic selection thing -- who exactly is the
>entity you trust there?

Me!

Greg can (and does) criticize/yell/flame me and I will address his and
any other reviewer concerns. I go through every patch that gets
selected by the engine and sent upstream.


--
Thanks,
Sasha=
