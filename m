Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04137ABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 15:21:18 +0000 (UTC)
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3F8F1AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 15:21:17 +0000 (UTC)
Received: by wgjx7 with SMTP id x7so198847013wgj.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 08 Jul 2015 08:21:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <559D34E2.1050703@roeck-us.net>
References: <201507080121.41463.PeterHuewe@gmx.de> <2102387.OD8sBG4Eol@avalon>
	<559C73DF.2030008@roeck-us.net>
	<CAErSpo622+-3XS=C=EN0S3qi8ZN4aehBmxf58RwyNvNdbgD0cw@mail.gmail.com>
	<559D34E2.1050703@roeck-us.net>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Wed, 8 Jul 2015 10:20:55 -0500
Message-ID: <CAErSpo7icTYJXaeS33YuG7WNMcdDsfMcQJBuY=h3UU3QvtD92A@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset=UTF-8
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

On Wed, Jul 8, 2015 at 9:34 AM, Guenter Roeck <linux@roeck-us.net> wrote:
> On 07/08/2015 07:20 AM, Bjorn Helgaas wrote:
>> On Tue, Jul 7, 2015 at 7:50 PM, Guenter Roeck <linux@roeck-us.net> wrote:
>>
>>> ... In once recent case, where I did spend the time,
>>> and I thought the maintainer had agreed to accept the patch, I ended up
>>> getting an automated patchwork email telling me that the patch was
>>> deferred indefinitely. Not really encouraging either.
>>
>> Hmm, I use patchwork, but I don't have any idea what it looks like on
>> the submitter's side.  If it generates discouraging emails, that's bad
>> news to me.  I change the state of lots of patches because (a) they
>> were cross-posted and I expect another maintainer to deal with them,
>> (b) they have been superseded, (c) there have been reviews that
>> require a respin, etc.  I'm not very careful about the actual state
>> because from my point of view, all the states do the same thing:
>> remove the patch from my to-do list.
>>
>> I wish I knew how to use patchwork better, or had a smarter workflow
>> that could comprehend a series as a single entity.  Patchwork is a lot
>> of clicking, but I don't know anything better.
>
> Wasn't you (in case you think so), and I don't think it is a problem that
> patchwork sends e-mail. The problem in this case was that the maintainer
> seemed to suggest that he would accept the patch before deferring it.
> At that point I gave up pushing for it.
>
> Now, if you set a bug to "deferred" state because you intend to pick it
> up for the next release, that would be different and might in fact be
> considered discouraging, unless you let the submitter know what is going on.

That's one thing I don't like about patchwork: there's no way that I
know of to annotate the state change.  I'd like a way to change the
state to "Changes requested" along with a pointer to the relevant
email.  Or to "Not applicable" along with a pointer to the other tree
I expect it to go through.

It'd be nice if one could include patchwork directives in an email,
the way you can with the Debian bug tracker.

Bjorn
