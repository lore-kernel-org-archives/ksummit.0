Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 08B22B1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 19:47:28 +0000 (UTC)
Received: from mail-yb0-f172.google.com (mail-yb0-f172.google.com
	[209.85.213.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8E2B21BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 19:47:27 +0000 (UTC)
Received: by mail-yb0-f172.google.com with SMTP id 84so75593982ybe.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Jul 2017 12:47:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170705184544.GB22044@kroah.com>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<CAPcyv4iOV2-hndx1rQmpPQF+myp=P8rmpf5JhXQXZxPhR6qoQw@mail.gmail.com>
	<20170705184544.GB22044@kroah.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 5 Jul 2017 12:47:25 -0700
Message-ID: <CAPcyv4in4xtyL0qk86QQJpofwn-+HZSsRqTAHLQ6fTmJNkOjWw@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Carlos O'Donell <carlos@redhat.com>, Linux API <linux-api@vger.kernel.org>,
	Thorsten Leemhuis <linux@leemhuis.info>,
	Shuah Khan <shuahkh@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 5, 2017 at 11:45 AM, Greg KH <greg@kroah.com> wrote:
> On Wed, Jul 05, 2017 at 09:54:29AM -0700, Dan Williams wrote:
>>
>> I wrote some test infrastructure to go after xhci TRB boundary
>> conditions [1]. So, yes, some of these are possible to unit test, but
>> of course not all.
>>
>> [1]: http://marc.info/?l=linux-usb&m=140872785411304&w=2
>
> I forgot about that, what ever happened to it, any reason it never got
> merged?

Ran out of time before being consumed by NVDIMM stuff, but I did take
some of the lessons learned over into tools/testing/nvdimm/. I haven't
done the work to integrate that into kselftest, so far it's only
exercised by the tests in the 'ndctl' [1] utility.

[1]: https://github.com/pmem/ndctl
