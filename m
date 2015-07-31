Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 18697279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:52:15 +0000 (UTC)
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 821AB258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:52:14 +0000 (UTC)
Received: by wicgj17 with SMTP id gj17so27707009wic.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 10:52:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150731171500.GC4995@roeck-us.net>
References: <55BAE39F.9060705@oracle.com>
	<CAErSpo52d5DEp_KuVoQXm4DsVakemDboLUysy6_vHL6+-xgRJw@mail.gmail.com>
	<20150731165915.GA4995@roeck-us.net> <20150731170825.GA2721@kroah.com>
	<20150731171500.GC4995@roeck-us.net>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Fri, 31 Jul 2015 12:51:53 -0500
Message-ID: <CAErSpo5ZDAAJVo7Lm6e2rg3sqvrtsTHRaV9nBDy+SDVMjy8MKw@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Sasha Levin <sasha.levin@oracle.com>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 31, 2015 at 12:15 PM, Guenter Roeck <linux@roeck-us.net> wrote:
> On Fri, Jul 31, 2015 at 10:08:25AM -0700, Greg KH wrote:
>> On Fri, Jul 31, 2015 at 09:59:15AM -0700, Guenter Roeck wrote:
>> > Hi Bjorn,
>> >
>> > On Fri, Jul 31, 2015 at 11:27:38AM -0500, Bjorn Helgaas wrote:
>> > > On Thu, Jul 30, 2015 at 9:55 PM, Sasha Levin <sasha.levin@oracle.com> wrote:
>> > > > Mainly I'd like to talk about improving testing around the kernel, both by catching bugs
>> > > > and by improving the quality of debug output that comes out of the kernel.
>> > >
>> > > What sort of debug output improvements are you interested in?  I spend
>> > > a fair amount of time converting to dev_printk and %pR.  They make the
>> >
>> > I have been wondering about that, especially since dev_dbg() and
>> > 'dev_printk(KERN_DEBUG, ...)' are semantically different. Any reason
>> > for preferring dev_printk() over dev_dbg() ?
>>
>> The opposite is true, please always use dev_dbg() as it properly ties
>
> Hi Greg,
>
> maybe my semantics wasn't perfect - my question was why Bjorn prefers
> dev_printk(KERN_DEBUG, ..) over dev_dbg(), which he answered.
>
> I did not (want to) make the claim or even suggest that dev_printk()
> would be preferred over dev_dbg() in general.

Lest I give the wrong impression, I'm not opposed to dev_dbg().  I
just think there are two separate changes that don't need to be made
at the same time: (1) convert to dev_printk style, and (2) convert to
the dynamic debug stuff.  As a consumer of dmesg logs, I'm most
interested in the former.

I prefer that a dmesg collected in the simplest possible way, with no
special config or boot flags, be as useful as possible.  So converting
to dynamic debug requires much more thought about which messages
should be always printed and which should become dynamic.
