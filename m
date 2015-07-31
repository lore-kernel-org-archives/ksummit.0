Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D914196
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:03:40 +0000 (UTC)
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6B64413E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:03:39 +0000 (UTC)
Received: by wibxm9 with SMTP id xm9so42178090wib.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 10:03:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150731165915.GA4995@roeck-us.net>
References: <55BAE39F.9060705@oracle.com>
	<CAErSpo52d5DEp_KuVoQXm4DsVakemDboLUysy6_vHL6+-xgRJw@mail.gmail.com>
	<20150731165915.GA4995@roeck-us.net>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Fri, 31 Jul 2015 12:03:18 -0500
Message-ID: <CAErSpo6YgjgEE1aBvDV82OV8YP5DsoNVYAhhN7kdBPUfO5fpfg@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset=UTF-8
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 31, 2015 at 11:59 AM, Guenter Roeck <linux@roeck-us.net> wrote:
> Hi Bjorn,
>
> On Fri, Jul 31, 2015 at 11:27:38AM -0500, Bjorn Helgaas wrote:
>> On Thu, Jul 30, 2015 at 9:55 PM, Sasha Levin <sasha.levin@oracle.com> wrote:
>> > Mainly I'd like to talk about improving testing around the kernel, both by catching bugs
>> > and by improving the quality of debug output that comes out of the kernel.
>>
>> What sort of debug output improvements are you interested in?  I spend
>> a fair amount of time converting to dev_printk and %pR.  They make the
>
> I have been wondering about that, especially since dev_dbg() and
> 'dev_printk(KERN_DEBUG, ...)' are semantically different. Any reason
> for preferring dev_printk() over dev_dbg() ?

Personally I think that difference is a hassle.  When I convert
printk(KERN_DEBUG) to use dev_printk, I use dev_printk(KERN_DEBUG) to
preserve the fact that the printk happens unconditionally.  If I were
smarter, I would figure out how to use dev_dbg() effectively, but
usually I want my patch to be "convert to dev_printk", not "convert to
dev_dbg and only print when some magic incantation is given".
