Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C72B7957
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Aug 2016 12:28:28 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 850C01B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Aug 2016 12:28:27 +0000 (UTC)
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u7ICORni107941 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Aug 2016 08:28:26 -0400
Received: from e23smtp08.au.ibm.com (e23smtp08.au.ibm.com [202.81.31.141])
	by mx0b-001b2d01.pphosted.com with ESMTP id 24va4yb7m3-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Aug 2016 08:28:26 -0400
Received: from localhost
	by e23smtp08.au.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Thu, 18 Aug 2016 22:28:22 +1000
Received: from d23relay06.au.ibm.com (d23relay06.au.ibm.com [9.185.63.219])
	by d23dlp03.au.ibm.com (Postfix) with ESMTP id E03103578058
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Aug 2016 22:28:16 +1000 (EST)
Received: from d23av06.au.ibm.com (d23av06.au.ibm.com [9.190.235.151])
	by d23relay06.au.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u7ICSG4l32047148 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Aug 2016 22:28:16 +1000
Received: from d23av06.au.ibm.com (localhost [127.0.0.1])
	by d23av06.au.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u7ICSFJj012551 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Aug 2016 22:28:16 +1000
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Ben Hutchings <ben@decadent.org.uk>
Date: Thu, 18 Aug 2016 08:28:12 -0400
In-Reply-To: <1471450271.13300.76.camel@decadent.org.uk>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<27174.1470221030@warthog.procyon.org.uk>
	<CALCETrU2qPO8Bu5wtaiKkYHgdpV3dL+Q5P+8YZLNSm3Ekn9sTw@mail.gmail.com>
	<1470265316.4176.207.camel@decadent.org.uk>
	<1471433936.13300.73.camel@decadent.org.uk>
	<1471439025.2664.49.camel@linux.vnet.ibm.com>
	<1471450271.13300.76.camel@decadent.org.uk>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <1471523292.2664.105.camel@linux.vnet.ibm.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Josh Boyer <jwboyer@fedoraproject.org>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@sirena.org.uk>
Subject: Re: [Ksummit-discuss] [TOPIC] Secure/verified boot and roots of
 trust
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2016-08-17 at 17:11 +0100, Ben Hutchings wrote:
> On Wed, 2016-08-17 at 09:03 -0400, Mimi Zohar wrote:
> > On Wed, 2016-08-17 at 12:38 +0100, Ben Hutchings wrote:
> > > 
> > > On Thu, 2016-08-04 at 00:01 +0100, Ben Hutchings wrote:
> > > > 
> > > > On Wed, 2016-08-03 at 09:46 -0700, Andy Lutomirski wrote:
> > > > [...]
> > > > > 
> > > > > 
> > > > > And it gets rid of the IMO extremely nasty temporary key.  I
> > > > > personally think that reproducible builds would add considerable
> > > > > value
> > > > > to many use cases, and we currently can't simultaneously support
> > > > > reproducible builds and Secure Boot without a big mess involving
> > > > > trusted parties, and the whole point of reproducible builds is to
> > > > > avoid needed to trust the packager.
> > > > [...]
> > > > 
> > > > You need that trusted party to supply a signature for the kernel, so
> > > > why is it so much worse to have them do that for the modules as well?
> > > [...]
> > > 
> > > I think I can now answer this myself.
> > > 
> > > Where there's a separate certificate store, the signing stage can be
> > > entirely independent of the initial build.  A user of a distribution
> > > can reproduce the distribution's unsigned binaries and then use their
> > > own keys to build signed binaries for their own use.
> > > 
> > > However, the module signing certificate embedded in the kernel - even
> > > if it refers to a persistent signing key, making it reproducible - has
> > > to be established before the initial build, so it doesn't allow for
> > > users to use a different root of trust.  So there ought to be an option
> > > to require signatures but without defining any trusted keys at build
> > > time.
> > 
> > With Mehmet Kayaalp's patches memory can be reserved for adding keys
> > post build.  After adding the key, the kernel would need to be
> > (re-)signed.
> 
> I know, but it doesn't replace the first certificate.

A kernel is being built for a product development group without any
builtin keys, but with reserved memory.   They've enabled
CONFIG_MODULE_SIG, but disabled CONFIG_MODULE_SIG_ALL.

Both inserting the key into the kernel and signing the kernel modules
are done post build.

For reproducible builds, instead of filling the reserved memory with
random numbers, so that it isn't compressed out, we would need to modify
the build process to use predefined uncompressible junk.

Mimi
