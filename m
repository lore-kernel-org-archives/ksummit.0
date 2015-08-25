Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0202FBC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 19:00:02 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[37.139.156.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4D63D11F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 19:00:01 +0000 (UTC)
Message-ID: <55DCBB21.8070009@sonymobile.com>
Date: Tue, 25 Aug 2015 11:59:45 -0700
From: Tim Bird <tim.bird@sonymobile.com>
MIME-Version: 1.0
To: Pavel Machek <pavel@ucw.cz>, Krzysztof Kozlowski <k.kozlowski@samsung.com>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com>
	<55B82222.3010409@samsung.com> <20150729074011.GB12557@amd>
In-Reply-To: <20150729074011.GB12557@amd>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>,
	=?windows-1252?Q?=22Andersson=2C_Bj=F6rn=22?=
	<Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/29/2015 12:40 AM, Pavel Machek wrote:
> Hi!
> 
>>> There is now a wiki page at:
>>> See http://elinux.org/Kernel_areas_of_focus_for_mainlining
>>> In particular it has a table showing certain areas that tend to have
>>> a lot of out-of-tree code (e.g. most phones have between 80K to
>>> 100K of lines of wireless driver support out-of-mainline)
>>
>> Did anyone see successful attempts of mainlining such vendor code? I
>> mean mainlining by individuals, not by vendor company itself.
> 
> That is what is happening on Nokia N900. It took some time, but we
> have almost usable phone at this point. We'll have usable one once
> power management is working and once we get some more reasonable code
> to control ofono.

Just an update on this thread.  We held a BOF at LinuxCon last week
on this topic.  I gave a presentation with some background, and
then we had a discussion.  Notes from the meeting (and a link to the
presentation) are at: 
http://elinux.org/LCNA_2015_Device_Mainlining_BOF_meeting_notes

We'll be doing more BOFs on this topic at Linaro Connect and ELC Europe.

I believe this would make a good discussion area for the kernel
summit.  The summit will likely include developers who have a
good idea of detailed technical problem areas that need attention in
order to make progress on this problem.

Thanks.
 -- Tim
