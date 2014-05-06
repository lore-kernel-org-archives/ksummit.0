Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5835F996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 04:04:27 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2C8841F968
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 04:04:26 +0000 (UTC)
Message-ID: <53685F44.3040305@roeck-us.net>
Date: Mon, 05 May 2014 21:04:20 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Steven Rostedt <rostedt@goodmis.org>, Greg KH <greg@kroah.com>
References: <53662254.9060100@huawei.com>	<CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>	<5366FBDB.7090705@huawei.com>
	<20140505134126.GA22287@thunk.org>	<20140505223324.GA5298@kroah.com>
	<20140505232010.26a67845@gandalf.local.home>
In-Reply-To: <20140505232010.26a67845@gandalf.local.home>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Josh Boyer <jwboyer@fedoraproject.org>, lizf.kern@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/05/2014 08:20 PM, Steven Rostedt wrote:
> On Mon, 5 May 2014 15:33:24 -0700
> Greg KH <greg@kroah.com> wrote:
>
>
>> And as for announcing it ahead of time, I'm never going to do that
>> again, the aftermath was horrid of people putting stuff that shouldn't
>> be there.  Heck, when people know about what the enterprise kernels are
>> going to be, they throw stuff into upstream "early", so it's a
>> well-known pattern and issue.
>
> Perhaps you can announce that 3.X "might" be the LTS tree. And just as
> 3.X merge window opens, announce that 3.(X-1) is the new LTS tree. It
> would be too late to have people pushing "unfinished" code into the LTS.
>

After the first time this happens people would know or assume that
it is going to be 3.(X-1), and push the unfinished stuff into that
release. Then 3.(X-1) would be in such a bad shape that using it as
stable release would be a bad idea. And if 3.(X-1) doesn't make it,
you would have even more people push unfinished crap into 3.X.
Ultimately you would end up with two bad releases instead of one.

In other words, I don't think this kind of reverse psychology would work.

Guenter
