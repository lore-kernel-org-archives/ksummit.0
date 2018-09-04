Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F3806CED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 23:43:04 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
	[209.85.210.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7663A7C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 23:43:04 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id j8-v6so2467030pff.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Sep 2018 16:43:04 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>,
	Laura Abbott <labbott@redhat.com>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<7e4a1cb8-9f3c-e1ea-e9bd-5f1f3588ce65@roeck-us.net>
	<d1f90b8d-ca88-6c39-471e-898737a8a6ac@redhat.com>
	<20180904231450.GE16300@sasha-vm>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <bd874e9c-eea9-ec78-e2cf-a00f635c52f7@roeck-us.net>
Date: Tue, 4 Sep 2018 16:43:02 -0700
MIME-Version: 1.0
In-Reply-To: <20180904231450.GE16300@sasha-vm>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Greg KH <gregkh@linuxfoundation.org>,
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

On 09/04/2018 04:14 PM, Sasha Levin wrote:
[ ... ]
>>
>> Yes but with a longer -rc cycle we could have more time to actually
>> find those bugs before they get released and we could get more focused
>> testing.
> 
> Indeed, but what's long enough? I'm sure that if we extend it to a month
> we'll find even more bugs; there's never "enough" testing.
> 
> Maybe some concrete numbers will help here. Do you maybe know how many
> commits in the past year snuck past the -rc cycle into a stable release
> and found as buggy by Fedora's testing pipeline?
> 

... and how many bugs were found during the existing test cycle ?

The next question would be how many regressions were reported by users
after a release was published.

The statistics I carried until early this year suggested a regression rate
of around 0.15% for stable releases, where regression means that a bug was
found post-release and had to be fixed later. It would indeed be interesting
to know how many of those were found by (automated ?) testing and how many
were found by users.

Guenter
