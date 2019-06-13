Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 230E4159A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 19:53:12 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E58EA76D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 19:53:10 +0000 (UTC)
Date: Thu, 13 Jun 2019 15:53:08 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Tiejun Chen <tiejunc@vmware.com>
Message-ID: <20190613195308.GB9609@mit.edu>
References: <20190530060111.GA30403@mit.edu> <20190530135431.GE2751@mit.edu>
	<BYAPR05MB587886EA9E977866F067424FC5EF0@BYAPR05MB5878.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <BYAPR05MB587886EA9E977866F067424FC5EF0@BYAPR05MB5878.namprd05.prod.outlook.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] UniLinux -- Unikernelized Linux
 Exploration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jun 13, 2019 at 02:36:31AM +0000, Tiejun Chen wrote:
> Hi Ted,
> 
> Looks I missed this email so really sorry for this delay response. When I went through ksummit-discuss today and just noticed this ☹
> 
> Overall, I didn't refactor too much into the big architecture of my proposal. But I'd like to 1>. go into something in detail with the participants ; 2>. talk a little bit new implementations. So besides of my original version, this time we would review-discuss them
> 1.  Reduce the source code
> For example, I'm thinking if we can remove unnecessary kernel parameter sections while compiling. Furthermore, we need to extend this to syscall.
> 2.  Decouple the scheduler 
> Do we still need to keep all schedulers work in terms of those unikernel cases running one process? Even this process is running with one thread or few threads sometime.
> 3.  Any refactors to some valuable use cases like a safety-critical application. What about classifying syscall to different levels?
> 4.  Others

Tiejun, this looks like it's only vaguely about Linux.  You may have
started with the Linux kernel code at one point, but you've made
sufficient changes that it's unclear to me how we could expect people
who have never heard of UniKernel before to be able to participate in
your these discussions.

If you had specific changes that you would like to be seen made to the
mainline Linux kernel, perhaps it might be more profitable for you to
make specific concrete suggestions, preferably backed up by code, and
send it to the Linux Kernel mailing list, cc'ed to ksummit-discuss?

Regards,

						- Ted

> 
> Instead of making out my solution simply during those summits, plus, each part in the original version is not be implemented generally, so I think ksummit is supposed to a good chance to help me address these challenges properly. So this time, in terms of my proposal, I'm open to any technical solutions.
> 
> Thanks
> Tiejun 
> 
> > -----Original Message-----
> > From: Theodore Ts'o <tytso@mit.edu>
> > Sent: Thursday, May 30, 2019 9:55 PM
> > To: ksummit-discuss@lists.linuxfoundation.org
> > Cc: Tiejun Chen <tiejunc@vmware.com>
> > Subject: Re: [Ksummit-discuss] [TECH TOPIC] UniLinux -- Unikernelized Linux
> > Exploration
> > 
> > On Thu, May 30, 2019 at 02:01:11AM -0400, Theodore Ts'o wrote:
> > > From: Tiejun Chen <tiejunc@vmware.com>
> > >
> > > Unikernel is relatively a novel software technology that links an
> > > application with OS in the form of a library and packages them into a
> > > specialized image that facilitates direct deployment on a
> > > hypervisor....
> > 
> > Tiejun, could you give some details regarding how your proposed
> > presentation would differ from the one you gave at the OSS NA in Los
> > Angelos?
> > 
> > https://nam04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fossn
> > a2017.sched.com%2Fevent%2FBDpy%2Funikernels-and-explorations-tiejun-
> > chen-
> > vmware&amp;data=02%7C01%7Ctiejunc%40vmware.com%7C1e77cc17ac614
> > 0465ab408d6e5065bed%7Cb39138ca3cee4b4aa4d6cd83d9dd62f0%7C0%7C0
> > %7C636948212810513960&amp;sdata=hzZ9MpsXHx%2BEiAe%2BrJwXBjWiwx
> > gAWdd8h26R6FcCwTc%3D&amp;reserved=0
> > 
> > Many thanks!
> > 
> > 						- Ted
