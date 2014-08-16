Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 40FFF8D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 16 Aug 2014 00:27:35 +0000 (UTC)
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B872A20224
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 16 Aug 2014 00:27:34 +0000 (UTC)
Received: by mail-pd0-f177.google.com with SMTP id p10so4154079pdj.36
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Aug 2014 17:27:34 -0700 (PDT)
Message-ID: <1408148851.25424.15.camel@localhost.localdomain>
From: Darren Vincent Hart <darren@apps.dvhart.com>
To: Theodore Ts'o <tytso@mit.edu>
Date: Fri, 15 Aug 2014 17:27:31 -0700
In-Reply-To: <nsxbnrqtzm7.fsf@closure.thunk.org>
References: <nsxbnrqtzm7.fsf@closure.thunk.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Grant Likely <glikely@secretlab.ca>,
	ksummit-discuss@lists.linuxfoundation.org,
	Georgi Vlaev <georgi.vlaev@konsulko.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Pantelis Antoniou <panto@antoniou-consulting.com>
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2014-08-11 at 18:45 -0400, Theodore Ts'o wrote:

OK, so my first time attending, hopefully this is the sort of feedback
you're looking for Ted:

> Unconference track:     http://goo.gl/xmeoSd
> 
> Possible unconference topics culled from discuss list
> 
> * Driver model/resources, ACPI/DT, etc. sigh

We had a good initial discussion on this. Since then, the ACPI 5.1
specification has been published, including the addition of the Device
Specific Properties mechanism (_DSD). An initial patch series in support
of this and the device_properties abstraction should hit the lists prior
(just barely) to kernel summit.

Beyond this specific patch series, there are some related SoC
configuration and enabling topics which came up that we could cover:
kernel and userspace pinconf control and SSDT overlays, for example.

I would very much like to see a slot in the unconference to discuss this
with the group. But failing that, perhaps this can serve as a starting
point for a hallway conversation.

Thanks,

Darren Hart
