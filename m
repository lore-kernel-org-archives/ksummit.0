Return-Path: <borntraeger@de.ibm.com>
To: Jiri Kosina <jikos@kernel.org>, ksummit-discuss@lists.linux-foundation.org
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Date: Mon, 11 Jul 2016 09:44:06 +0200
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Message-Id: <57834E46.4080406@de.ibm.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/09/2016 12:35 AM, Jiri Kosina wrote:
> Yeah, this topic again. It'd be a sad year on ksummit-discuss@ without it, 
> wouldn't it? :)
> 
> As a SUSE Enterprise Linux kernel maintainer, stable kernel is one of the 
> crucial elements I rely on (and I also try to make sure that SUSE 
> contributes back as much as possible).
> 
> Hence any planned changes in the workflow / releases are rather essential 
> for me, and I'd like to participate, should any such discussion take 
> place.
> 
> In addition to that, I'd again (like during the past 5+ years, but it 
> never really happened) like to propose a stable tree discussion topic: I'd 
> like to see an attempt to make the stable workflow more oriented towards 
> "maintainers sending pull requests" rather than "random people pointing to 
> patches that should go to stable". This has been much of an issue in the 
> past, when we've been seeing many stable tree regressions; that's not the 
> case any more, but still something where I sense a room for improvement.
> 
> Thanks,

I think the model ("cc stable", vs "commit ids" vs "pull request") does not
matter that much. 

Some ideas
a: what about some CI environment/infrastructure that goes beyond what Guenther
and other provide (we have build testing and bootup testing in qemu). maybe
some kind subset of make test that has to work everywhere and can be executed
by anyone
b: maybe provide an rc for stable to trigger testing of a
c: quicker reverts even without upstream revert
