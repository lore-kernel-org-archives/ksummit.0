Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DC59370A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 01:29:37 +0000 (UTC)
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 787571F940
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 01:29:37 +0000 (UTC)
Received: by mail-pa0-f46.google.com with SMTP id kq14so3246101pab.33
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 18:29:37 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
Message-ID: <1400289090.9575.37.camel@wasp-deb.dvhart.com>
From: Darren Vincent Hart <darren@dvhart.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Date: Fri, 16 May 2014 18:11:30 -0700
In-Reply-To: <1527482.CPBrbWbyLU@vostro.rjw.lan>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1461572.JtpPDPW8DH@vostro.rjw.lan>
	<20140514130401.GC12304@sirena.org.uk>
	<1527482.CPBrbWbyLU@vostro.rjw.lan>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: dvhart@dvhart.com, ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Mika Westerberg <mika.westerberg@linux.intel.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
 etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2014-05-15 at 14:05 +0200, Rafael J. Wysocki wrote:
> On Wednesday, May 14, 2014 02:04:01 PM Mark Brown wrote:
> > 
> > Some of what's going on is limitations in current ACPI and it does make
> > sense to address those in as generic a fashion as possible but it isn't
> > clear to me that all ACPI users want to have something that looks like
> > DT.
> 
> For things that are not covered by ACPI either directly or indirectly today,
> that seems to be the only approach feasible in a reasonable time frame.
> 
> For things that are covered by ACPI that is less clear.  Even in that case,
> though, if there's a binding (defined as a set of keys and value data types
> associated with them) that a driver expects to be used, it makes a little
> sense to create a second binding for it just for the purpose of using it with
> a different firmware interface.
> 
> Rafael
> 

As Mark has pointed out, there are many ways in which ACPI is used (and
sometimes abused), and we agree that "all" ACPI users may not want to
use something that looks like DT. This gives us the flexibility to do
so, and solves a couple critical issies.

What we are starting to see is people developing with ACPI-based systems
that need to use both 1) drivers with some kind of parameterization that
isn't explicitly covered in the ACPI specification and 2) DT-aware
platform drivers without ACPI support.

For 1, without any kind of clear guiding principles like a DT Binding,
we are seeing lots of custom non-reusable implementations ranging from
all kinds of _DSM implementations to named objects (ACPI pdata
basically), all with driver-specific validation, parsing, formats, etc.

For 2, we tend to see more board files.

With a standardized mechanism in ACPI to provide property data, we can
enhance ACPI-aware drivers while abstracting the parsing, validation,
etc. into something that can be shared across the drivers. The idea
being we reduce code duplication and the associated bugs and maintenance
overhead that brings with it.

At the same time, we can readily adapt DT-aware platform drivers to
build pdata from the same schema/binding, represented in a standardized
key:value format. The abstraction layer Rafael has mentioned allows us
to keep the changes to the drivers minimal by not having to add an
ACPI-specific pdata builder (like I did in my prototype precursor to
this ACPI Spec change at ELC/KS last year).

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
