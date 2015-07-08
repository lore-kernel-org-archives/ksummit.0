Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 87692B68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 14:34:24 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0F749136
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 14:34:24 +0000 (UTC)
Message-ID: <559D34E2.1050703@roeck-us.net>
Date: Wed, 08 Jul 2015 07:34:10 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Bjorn Helgaas <bhelgaas@google.com>
References: <201507080121.41463.PeterHuewe@gmx.de> <2102387.OD8sBG4Eol@avalon>
	<559C73DF.2030008@roeck-us.net>
	<CAErSpo622+-3XS=C=EN0S3qi8ZN4aehBmxf58RwyNvNdbgD0cw@mail.gmail.com>
In-Reply-To: <CAErSpo622+-3XS=C=EN0S3qi8ZN4aehBmxf58RwyNvNdbgD0cw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/08/2015 07:20 AM, Bjorn Helgaas wrote:
> On Tue, Jul 7, 2015 at 7:50 PM, Guenter Roeck <linux@roeck-us.net> wrote:
>
>> ... In once recent case, where I did spend the time,
>> and I thought the maintainer had agreed to accept the patch, I ended up
>> getting an automated patchwork email telling me that the patch was
>> deferred indefinitely. Not really encouraging either.
>
> Hmm, I use patchwork, but I don't have any idea what it looks like on
> the submitter's side.  If it generates discouraging emails, that's bad
> news to me.  I change the state of lots of patches because (a) they
> were cross-posted and I expect another maintainer to deal with them,
> (b) they have been superseded, (c) there have been reviews that
> require a respin, etc.  I'm not very careful about the actual state
> because from my point of view, all the states do the same thing:
> remove the patch from my to-do list.
>
> I wish I knew how to use patchwork better, or had a smarter workflow
> that could comprehend a series as a single entity.  Patchwork is a lot
> of clicking, but I don't know anything better.
>

Wasn't you (in case you think so), and I don't think it is a problem that
patchwork sends e-mail. The problem in this case was that the maintainer
seemed to suggest that he would accept the patch before deferring it.
At that point I gave up pushing for it.

Now, if you set a bug to "deferred" state because you intend to pick it
up for the next release, that would be different and might in fact be
considered discouraging, unless you let the submitter know what is going on.

Guenter
