From: Steven Rostedt <rostedt@goodmis.org>
Date: Thu, 16 Jun 2022 15:08:45 -0400
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
 <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
 <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
 <20220616125128.68151432@gandalf.local.home>
 <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
Message-ID: <20220616150845.22e83f9a@gandalf.local.home>

On Thu, 16 Jun 2022 14:25:44 -0400
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> Not if it's managed correctly.  One method could simply be to not care
> but be careful.  After all, lots of companies still manage to produce
> proprietary modules even with us actively trying to break the API. 
> Either it's not as difficult as we think or API changes are easier to
> cope with than we assume.

All I read from this is that eBPF is the new way that proprietary modules
can have their stable API.

The problem I have here is that eBPF is becoming extremely invasive. It is
now hooking to any function in the kernel that isn't marked notrace. If
there's not a clear border on what is considered non-stable now, we will be
fighting with those that say "hey this broke my bpf program, revert it
please" for a long time coming.

-- Steve
