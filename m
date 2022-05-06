From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 6 May 2022 13:56:48 +0200
Subject: [Ksummit-discuss] uninitialized variables bugs
In-Reply-To: <20220506091338.GE4031@kadam>
References: <20220506091338.GE4031@kadam>
Message-ID: <CAK8P3a0DY2b15yyzpwsjOCqOALfTbsmYf1kTnQZF5wPW8mtFbQ@mail.gmail.com>

On Fri, May 6, 2022 at 11:13 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:

>
> It's frustrating.  Sometimes the false positives are hard to analyse
> because I have to read through multiple functions.  A lot of times
> when I write a patch and a commit message Nathan has already fixed it
> so it's just a waste of time.

Agreed. I'm not actually checking for those warnings on gcc any more,
but just the clang warnings point to a bigger problem.

> It's risky as well.  The Smatch check for uninitialized variables was
> broken for most of 2021.  Nathan sometimes goes on vacation.
>
> I guess I would hope that one day we can turn on the GCC uninitialized
> variable warnings again.  That would mean silencing false positives
> which a lot of people don't want to do...  Maybe Clang has fewer false
> positives than GCC?

I think for the gcc warnings to become useful again, we may have to
wait for a future compiler release. I have not checked gcc-12 for this,
but it's a very old topic.

Fundamentally, it's impossible for any compiler to do this correctly,
because of the halting problem. gcc apparently has some heuristics
that worked well enough in the past, but it misses some obvious
cases and causes false positives in unexpected places, often
depending on optimization flags.

Recent gcc versions are much worse than older ones, since the
inlining changed in a way that caused a ton of false-positives.

clang is generally better at catching the simple cases reliably,
and it does this independent of optimization flags. However, it
stops at the function boundary, so it never catches some of the
cases that gcc was good at.

The gcc static analyzer apparently gained an option[1] that
works similarly to what you have in smatch. I have not tried
using this, but this may be something we can do in CI
systems that may not want to run smatch for some reason.

        Arnd

[1] https://gcc.gnu.org/onlinedocs/gcc-12.1.0/gcc/Static-Analyzer-Options.html#index-Wanalyzer-use-of-uninitialized-value
