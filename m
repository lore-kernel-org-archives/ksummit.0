Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 659B785D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 04:09:07 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 010D61FAB5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 04:09:06 +0000 (UTC)
Message-ID: <538955D3.2020902@roeck-us.net>
Date: Fri, 30 May 2014 21:08:51 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Greg KH <greg@kroah.com>, Theodore Ts'o <tytso@mit.edu>
References: <alpine.DEB.2.10.1405282332430.3952@nanos>	<20140528233145.GA14933@cloud>
	<1401344001.27691.4.camel@dabdike>	<20140529233459.GD11741@kroah.com>	<1401423973.2163.26.camel@dabdike>	<20140530050220.GA2505@kroah.com>	<1401427998.2163.37.camel@dabdike>	<20140530165646.GZ25041@thunk.org>
	<538933F1.4030009@huawei.com>	<20140531020702.GD20492@thunk.org>
	<20140531035255.GB2849@kroah.com>
In-Reply-To: <20140531035255.GB2849@kroah.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] More productive uses of enthusiastic new
 kernel developers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/30/2014 08:52 PM, Greg KH wrote:
> On Fri, May 30, 2014 at 10:07:02PM -0400, Theodore Ts'o wrote:
>> On Sat, May 31, 2014 at 09:44:17AM +0800, Li Zefan wrote:
>>> This is similar to my idea in "stable issues" to find a co-maintainer
>>> for Greg to do this work. While I sugguest to find a experienced and
>>> trustful person, you sugguest newcomers.
>>>
>>> I share the same concern with David, and I doubt newcompers are
>>> enthusiastic in doing backport for stable trees.
>>
>> All I can say is that I've seen it work.  Granted, it was in a
>> corporate environment, where if the person gets stuck, they can easily
>> call for help from a teammate at an adjacent desk.  The commits were
>> also in generally well annotated with testing instructions, and all of
>> the patches went through a code review process.  And, while these
>> people may have been newcomers to kernel programming, they had all
>> passed the Google hiring interview process.
>
> I think you just listed all of the reasons why this is a totally
> different environment from the "normal" stable kernel patch backport
> process.
>
> Not to mention the fact that we don't usually have tests for any
> specific patch, to ensure that they fix what they say they do, and that
> nothing got messed up in the backport.
>

Exactly - I could not have said it better.

Guenter
