Return-Path: <catalin.marinas@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8CD34D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 09:19:16 +0000 (UTC)
Received: from collaborate-mta1.arm.com (fw-tnat.austin.arm.com
	[217.140.110.23])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7B2111F97E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 09:19:16 +0000 (UTC)
Date: Wed, 13 Aug 2014 10:18:37 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20140813091837.GA18495@arm.com>
References: <53EAAC95.7080301@linaro.org> <20140813013342.GB6783@cloud>
	<CALCETrVP64FSJWyHHbm0R-2qTzN1Q5PwXh4k9+qjg1Q8bSud2w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALCETrVP64FSJWyHHbm0R-2qTzN1Q5PwXh4k9+qjg1Q8bSud2w@mail.gmail.com>
Cc: "Joseph S. Myers" <joseph@codesourcery.com>,
	John Stultz <john.stultz@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	lkml <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] (Resend) 2038 Kernel Summit Discussion Fodder
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 13, 2014 at 02:37:11AM +0100, Andy Lutomirski wrote:
> On Tue, Aug 12, 2014 at 6:33 PM,  <josh@joshtriplett.org> wrote:
> > On Tue, Aug 12, 2014 at 05:08:53PM -0700, John Stultz wrote:
> >> A more aggressive version of the previous proposal is what I’m calling the
> >> “New Virtual-Architecture” approach, basically extending the versioning
> >> control from the linker down into the kernel as well.  It would be adding a
> >> new “virtual-architecture” to the kernel, not entirely unlike how x32 is
> >> supported on x86_64 systems.  We would create entirely new ABI and
> >> architecture name in the kernel (think something like “armllt” or
> >> “i386llt”). We would preserve compatibility for legacy applications via
> >> personalities, similar mechanism as the compat_ interface used to support
> >> 32bit applications on 64bit kernels. In this case, we wouldn’t introduce
> >> new 64 bit syscalls in the kernel, as the existing interfaces would just be
> >> typed correctly for our new virtual architecture, but we would have
> >> duplicate syscall interfaces via the compat interfaces. The extra
> >> complexity would also be that we would have to support new 32bit compat
> >> environment on 64bit systems. Userspace would be completely rebuilt to
> >> support the new -llt architecture, and compatibility for legacy
> >> applications would be done via the same multiarch packaging as is done now
> >> for running 32bit applications on 64bit systems.
> >
> > I wonder: could we make this new architecture effectively use the
> > signatures of the 64-bit syscalls (similar to x32), just with a 32-bit
> > calling convention?
> 
> Doesn't x32 do the reverse?  It invokes *compat* syscalls using a
> 64-bit calling convention.

Not entirely. It uses 64-bit syscalls primarily with compat only when
sharing structures containing pointers. We are working on something
similar for arm64 (called the ILP32 ABI).

-- 
Catalin
