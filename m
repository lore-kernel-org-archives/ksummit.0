Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4220E8DD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 18:05:21 +0000 (UTC)
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2A94EE8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 18:05:20 +0000 (UTC)
Received: by oio137 with SMTP id 137so46462748oio.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 11:05:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150821175231.GM12027@sirena.org.uk>
References: <2111196.TG1k3f53YQ@avalon>
	<CAKdAkRQLGRqMT-CJz6FemPqyo78wFrM6Kc=pR_BKxqLZqEzjQA@mail.gmail.com>
	<alpine.DEB.2.10.1508210805500.2566@hadrien>
	<20150821161409.GA26302@localhost>
	<20150821165852.GH12027@sirena.org.uk>
	<CAKdAkRRrqCNojwBHQ809APetuC-u1XqwViRVp5fBB2tO+naQ_g@mail.gmail.com>
	<20150821174150.GL12027@sirena.org.uk>
	<20150821175231.GM12027@sirena.org.uk>
Date: Fri, 21 Aug 2015 11:05:19 -0700
Message-ID: <CAKdAkRSywrXnRdwVyn406qoN1hQbTkFCM34Xt4NaC-ZfZ64MQg@mail.gmail.com>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
	or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 21, 2015 at 10:52 AM, Mark Brown <broonie@kernel.org> wrote:
> On Fri, Aug 21, 2015 at 10:41:50AM -0700, Mark Brown wrote:
>> On Fri, Aug 21, 2015 at 10:30:17AM -0700, Dmitry Torokhov wrote:
>
>> > They are also often wrapped into other objects. For example input
>> > device might turn off regulators/clocks in it's close() method, which
>> > is called as part of input_unregister_device(). If input device is
>> > managed then that state change happens "some time later".
>
>> Right, but my understanding is that the integration with devm with the
>> object reference counting was intended to do the right thing.
>
> More specifically: the managed operations are guaranteed to be run in
> reverse order so so long as the resources used by the managed input
> device are also managed we're supposed to be fine.

That only works if _all_ resources are managed. Here we have an
example of non-managed operations (such as detaching device from a
power domain) in the middle of managed ones. And so the ordering gets
broken.

Thanks.

-- 
Dmitry
