Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A5FED1591
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 14:01:30 +0000 (UTC)
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4C4FF88E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 14:01:30 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w10so12753655pgj.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 07:01:30 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Vyukov <dvyukov@google.com>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
Date: Tue, 27 Aug 2019 07:01:26 -0700
MIME-Version: 1.0
In-Reply-To: <20190827134836.GB25038@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 8/27/19 6:48 AM, Greg Kroah-Hartman wrote:
> On Tue, Aug 27, 2019 at 06:24:36AM -0700, Dmitry Vyukov wrote:
>> On Mon, Aug 26, 2019 at 11:06 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>>>
>>> On Mon, 26 Aug 2019, Dmitry Vyukov wrote:
>>>> A somewhat related point re UUID/Change-ID.
>>>> For syzbot (or any other bug tracking system) we want to associate
>>>> bugs with fixes. It turned out there is no good identity of a change
>>>> that we could use. Commit hash is an obvious first thing to consider,
>>>> but (1) it changes in linux-next, (2) sometimes the change is not
>>>> committed yet when we do the association, (3) it is different when
>>>> backported to LTS (so not possible to say if a fix is in that stable
>>>> tree or not).
>>>> We decided to use commit subject, which works to some degree, but also
>>>> has problems: (1) not necessary unique, (2) sometimes people change
>>>> subject during backporting (e.g. prepend some prefix), (3) has all the
>>>> same problems of email clients messing with text (e.g. I can't issue
>>>> #syz fix command for loo long commit subjects with my email client).
>>>> Some real UUID/Change-ID would solve all of these problems by giving
>>>> us capability to refer to changes rather than a commit in a particular
>>>> tree only.
>>>
>>> If we adopt the Link: ..../$MSG tag widely then you have a UUID.
>>
>> Is there a way to ensure that everybody will generate right IDs
>> (ChangeID-Version) and then a link in canonical form will be included
>> into commit? As far as I understand this is not possible with the
>> current kernel tooling, as this aspect is not under control of any
>> unified tooling.
>> I see different maintainers use links to different archive web sites.
>> Also sometimes Link is present for other reasons (e.g. link to bug
>> report).
>> The link will need to be added by every developer (rather than
>> maintainer) so that it's available before the change is committed
>> anywhere.
> 
> For subsystems I maintain, I am already adding the Link: tag to
> lore.kernel.org with the message id in it.  That is automatically added
> by my scripts.
> 
>> Though, most of these are problems for any other change identification scheme...
> 
> Note, we have 4000+ developers every year, it's hard enough to get them
> all to agree on major things, let alone crazy stuff like this :)
> 

Is it really that crazy ?

I have to use a combination of subject analysis and patch content analysis
using fuzzy text / string comparison, combined with an analysis of the patch
description, to answer a simple question: Is this patch upstream, and what is
its upstream SHA ? Having a UUID tag would make this a simple and
straightforward operation. What is crazy is having to do all this analysis.

Guenter
