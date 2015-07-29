Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59DFB707
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 18:07:50 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[37.139.156.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A383E161
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 18:07:49 +0000 (UTC)
Message-ID: <55B9166E.6000700@sonymobile.com>
Date: Wed, 29 Jul 2015 11:07:42 -0700
From: Tim Bird <tim.bird@sonymobile.com>
MIME-Version: 1.0
To: Bintian <bintian.wang@huawei.com>, Mark Brown <broonie@kernel.org>, Steven
	Rostedt <rostedt@goodmis.org>
References: <20150723105726.GC30929@amd>	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>	<20150723121441.GB29747@amd>	<20150723084251.54da2be0@gandalf.local.home>	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com> <55B87D6A.8030508@huawei.com>
In-Reply-To: <55B87D6A.8030508@huawei.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
Cc: Pavel Machek <pavel@ucw.cz>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"riverful.kim@samsung.com" <riverful.kim@samsung.com>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>,
	=?windows-1252?Q?=22Andersson=2C_?= =?windows-1252?Q?Bj=F6rn=22?=
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

On 07/29/2015 12:14 AM, Bintian wrote:
> Hi All,
> 
> I am also very interested in this topic, and now I am focusing on
> Huawei cellphone kernel development.
> 
> One month ago, I submitted the basic system and clock driver of HiKey
> to linux kernel, and HiKey is the prototype of Huawei Honor 4X
> cellphone.
> 
> We really hope people can download the latest kernel code and run well
> on HiKey(or other mobile products) at some future date, and now we try
> to submit the rest drivers to kernel maillist.

That's great!  Thanks for your efforts on this!

...

> For HiKey, the original display driver is based on Framebuffer, but we
> need to reconstruct this driver based on DRM framework when do the
> upstream work, one lesson we learned here is trying to develop drivers
> based on the requirements of current linux sub-system.

Thanks for sharing that.

I'd be interested in hearing from different people about what
their big areas of concern are (or what they anticipate will
be their large areas of work).

>> IMHO it would be useful to discuss these areas, to see if there
>> are technical reasons for these deficiencies, and work to resolve
>> them.
> Agree.
> 
> Thanks,

I'm not trying to gin up attendees for LinuxFoundation or
Linaro events, but if you happen to be there, we are planning on
hosting BOFs about this topic at the following upcoming events:
  LinuxCon NA - August 19, 12:45, Seattle, WA, USA
  Linaro Connect - (probably) September 22, Burlingame, CA, USA
  ELC Europe - October 7, 11:30, Dublin, Ireland

Please drop by if you are interested, or send me an e-mail
if you want more details about the current work.
 -- Tim
