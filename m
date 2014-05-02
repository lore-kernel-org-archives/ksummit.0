Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2963E21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:17:27 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CAC4C1FC50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:17:26 +0000 (UTC)
Message-ID: <1399065442.2202.66.camel@dabdike>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jiri Kosina <jkosina@suse.cz>
Date: Fri, 02 May 2014 14:17:22 -0700
In-Reply-To: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] live kernel patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2014-05-02 at 21:42 +0200, Jiri Kosina wrote:
> Runtime/live kernel patching is becoming a topic these days. There are 
> several parallel implementations currently evolving in parallel (kpatch, 
> kgraft, criu-based solution, ksplice to some extent), all of them having 
> their pros and cons. 
> 
> It's clear that what is going to get merged at the end of the day would 
> have to be some super-position of the currently existing solutions. 
> 
> Finding a reasonable compromise might be challenging. Having discussion 
> between the groups working on those solutions (tech topic) and with 
> "general maintainer audience" to face the flame^W^W^Wobtain feedback 
> (core topic) would be very valuable step in converging to unified 
> solution.
> 
> Suggested participants: see the list of "competing" projects above

I can certainly dig up people on our CRIU team to discuss this if
there's interest.  I'm obviously biased, but in the interest of full
disclosure, the CRIU solution (our commercial product is called
"rebootless updates") isn't really a "patch" solution per se.  The end
result is a new kernel not a patched old kernel and we can update major
kernel versions.

Our big pro is that you don't have to generate patch files (this is what
sold it to us in the first place, since we did scope producing our own
ksplice patches) and that we can upgrade from any version to any
version.  Our big Con is that while we call the technology "rebootless"
there's a small hiatus when we complete the CRIU checkpoint, kexec to
the new kernel and resume the system.

James
