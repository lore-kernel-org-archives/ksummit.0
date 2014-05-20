Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 583372FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 May 2014 23:28:45 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id DCC9720279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 May 2014 23:28:44 +0000 (UTC)
Message-ID: <1400628521.2481.6.camel@dabdike>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: josh@joshtriplett.org
Date: Wed, 21 May 2014 08:28:41 +0900
In-Reply-To: <20140520225301.GC21744@cloud>
References: <537BA385.6090208@zytor.com> <20140520225301.GC21744@cloud>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Services needed from kernel.org
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2014-05-20 at 15:53 -0700, josh@joshtriplett.org wrote:
> On Tue, May 20, 2014 at 11:48:37AM -0700, H. Peter Anvin wrote:
> > I have been discussing with the Linux Foundation about if there are any
> > new IT services needed or desired for kernel developers (maybe or maybe
> > not under the kernel.org.)  The kernel.org cleanup and inevitable
> > changes meant we couldn't service some of the needs that we had in the
> > past, some of which has moved to privately owned equipment and some of
> > which has migrated to cloud services or discontinued.
> > 
> > However, the big question is: what IT services do kernel developers
> > need, and how can we best provide them?  One idea bandied about would be
> > to provide either managed or unmanaged VMs to kernel developers.  Would
> > that reduce the workload on the upper tier of kernel developers so that
> > we can focus more on our time on what actually provides value to our
> > users and employers, and which we hopefully find more interesting/fun?
> 
> How feasible is it to support git hooks that want to construct and send
> (significant volumes of) email, while retaining the security and
> sandboxing currently being applied to git repositories?

Seconded; it's a pain having to run my commit hooks on a different
system, particularly as the email is set up to come from kernel.org

James
