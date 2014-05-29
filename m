Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E8C979B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 09:29:42 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [119.145.14.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 927581F9BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 09:29:41 +0000 (UTC)
Message-ID: <5386FDAB.3010106@huawei.com>
Date: Thu, 29 May 2014 17:28:11 +0800
From: Li Zefan <lizefan@huawei.com>
MIME-Version: 1.0
To: Thomas Gleixner <tglx@linutronix.de>
References: <20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<20140528143246.GV15585@mwanda>
	<CAKMK7uGkURkwFdQQhrs1oi5Hpfk4SCuH0jv6x07vJ6cyAfEvwQ@mail.gmail.com>
	<20140528163902.GA5099@sirena.org.uk>
	<1401295862.13546.109.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528173553.GE5099@sirena.org.uk>
	<3908561D78D1C84285E8C5FCA982C28F328205B1@ORSMSX114.amr.corp.intel.com>
	<20140528183825.GA21477@sirena.org.uk>
	<alpine.DEB.2.10.1405282325020.3952@nanos>
In-Reply-To: <alpine.DEB.2.10.1405282325020.3952@nanos>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2014/5/29 5:32, Thomas Gleixner wrote:
> On Wed, 28 May 2014, Mark Brown wrote:
> 
>> On Wed, May 28, 2014 at 05:44:41PM +0000, Luck, Tony wrote:
>>
>>>> There's a world of difference between thanking people for review and a
>>>> detailed account of all the changes made in every single iteration of
>>>> the review.
>>
>>> This is already covered in Documentation/SubmittingPatches. Quoting
>>> lines 585-592 (see last sentence):
>>
>> Right, but Daniel is proposing lifting that above the --- and including
>> it in git.
> 
> What you really want is:
> 
> Link: https://lkml.kernel.org/r/MESSAGE_ID_OF_PATCH
> 
> It's way more useful than any of the v1-n writeups, which are most of
> the time just a completely waste of electrons. Even if written well,
> without the actual review context they are pretty pointless.
> 

A QA asked me about kernel development process. One of his question is,
he found some valuable information in the discussion of the patch often
won't be added to the changelog, so providing the commit how to find
the discussion?

You can simply google the subject or use the link in the changelog,
and the latter is much more convinient. I'd like to see the use of
link is more widely adopted by other maintainers.
