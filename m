Return-Path: <jforbes@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8CEEF1069
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 11:57:11 +0000 (UTC)
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3C2F0716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 11:57:11 +0000 (UTC)
Received: by mail-oi0-f65.google.com with SMTP id k12-v6so46538197oiw.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 04:57:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180911011056.GA6958@localhost.localdomain>
References: <20180911011056.GA6958@localhost.localdomain>
From: Justin Forbes <jforbes@redhat.com>
Date: Tue, 11 Sep 2018 06:57:09 -0500
Message-ID: <CAFbkSA2spzRzya=ftfTxK3Wca=wnNwg7x2o+rM5s8s201=R3Rw@mail.gmail.com>
To: Eduardo Valentin <edubezval@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] CVE patches annotation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 8:11 PM, Eduardo Valentin <edubezval@gmail.com> wrote:
> Hello,
>
> I would like to open a discussion on improving the annotation
> around CVE patches on the Linux kernel. Today, the kernel Documentation
> mentions about CVE assignment and asks as a good practice to at least
> mention the CVE  number in the patch [1]. But, is that enough?
> Should the kernel have more info about what patches fixes a specific
> CVE?
>
> Some of the challenges with current process:
> - The info about of about what CVEs have been patched in a kernel is
>   outside the kernel tree / git history.
> - Today, some patches have the CVE info, and many others do not mention
>   anything about CVE number.
> - As mentioned in the kernel documentation [1], not always the CVE
>   number is assigned when the patch(es) go into the kernel tree, so
>   maybe this may require some post merge annotation?

This is also sometimes relevant when you can fix and embargoed CVE
before embargo lifts because the actual fix doesn't make it obvious
that there is a security issue. Obfuscation is a somewhat useful tool
when fixing security bugs sometimes.  I would rather get the patches
in sooner than have them be properly annotated for the security fixes
they really are.

> - It is not always straight forward to know what patches are needed to
>   fix the CVE, specially on cases the fix require a series of
>   preparation work before the actual fix.
>
>   Specially on the later case, annotation can help, specially while
>   backporting.
>
It might be helpful in the cases where the fixes go in before the CVE
is announced/disclosed, to have the author send a summary once things
are public?

> BR,
>
>
> [1] - https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
