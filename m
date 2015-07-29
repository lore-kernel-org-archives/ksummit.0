Return-Path: <k.kozlowski@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2AA4F411
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 00:45:29 +0000 (UTC)
Received: from mailout3.w1.samsung.com (mailout3.w1.samsung.com
	[210.118.77.13])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 852B310A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 00:45:28 +0000 (UTC)
Received: from eucpsbgm2.samsung.com (unknown [203.254.199.245])
	by mailout3.w1.samsung.com
	(Oracle Communications Messaging Server 7.0.5.31.0 64bit (built May 5
	2014)) with ESMTP id <0NS8000W74RPHL40@mailout3.w1.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Wed,
	29 Jul 2015 01:45:25 +0100 (BST)
Message-id: <55B82222.3010409@samsung.com>
Date: Wed, 29 Jul 2015 09:45:22 +0900
From: Krzysztof Kozlowski <k.kozlowski@samsung.com>
MIME-version: 1.0
To: Tim Bird <tim.bird@sonymobile.com>, Mark Brown <broonie@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com>
In-reply-to: <55B7FD82.8010806@sonymobile.com>
Content-type: text/plain; charset=windows-1252
Content-transfer-encoding: 7bit
Cc: "kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	=?windows-1252?Q?=22Andersson=2C_Bj=F6rn=22?=
	<Bjorn.Andersson@sonymobile.com>, John Stultz <john.stultz@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 29.07.2015 07:09, Tim Bird wrote:
> On 07/23/2015 08:40 AM, Mark Brown wrote:
>> On Thu, Jul 23, 2015 at 08:42:51AM -0400, Steven Rostedt wrote:
>>
>>> Although is this something to be a core topic or a tech topic? Does
>>> this affect all subsystems, or just a set of drivers? Note, a core
>>> topic wont get as much time for discussion as a tech topic would.
>>
>> It's basically all subsystems that get impacted, at the minute I'd say
>> it's more a plan of action and process discussion than a technical one
>> though in the context of KS planning that's quite probably the same
>> thing.
>>
>>> Also, what is expected to be solved at KS?
>>
>> Tim Bird (Cced) has been running some sessions at other conferences
>> scoping the problem and discussing ways to move forward on this, another
>> similar session might be useful.
> 
> As Mark says, I've been working on almost exactly this topic for several
> months now.  Last year I conducted a survey investigating obstacles
> that developers (mostly corporate product developers) have in mainlining.
> There are lots of non-technical issues that are worth working on (version
> gap, corporate incentives, training, etc.), but which are outside
> the scope of the kernel summit.
> 
> There are also some technical areas where I think coordinated
> effort might be useful, to identify deficiencies and collaborate on
> progress.  These might be worth discussing at the summit.
> 
> In March of this year, I analysed code from several shipping phones
> (representing a number of different SoCs, including both ARM and
> Intel-architecture CPUs), and found that most products have between
> 1.2 and 3 million lines of code out-of-tree.  We are still in progress of
> finding patterns of out-of-treeness, to inform decisions about technical
> projects going forward.
> 
> There is now a wiki page at:
> See http://elinux.org/Kernel_areas_of_focus_for_mainlining
> In particular it has a table showing certain areas that tend to have
> a lot of out-of-tree code (e.g. most phones have between 80K to
> 100K of lines of wireless driver support out-of-mainline)

Did anyone see successful attempts of mainlining such vendor code? I
mean mainlining by individuals, not by vendor company itself.

It is a difficult task, especially without datasheets but it's possible.
At least for some drivers.

If there were such efforts, I would be curious what obstacles he/she
encountered (except a common one - missing datasheet/specs) and how he
can be helped?

Best regards,
Krzysztof
