From: Mauro Carvalho Chehab <mchehab@kernel.org>
Date: Sat, 18 Jun 2022 12:16:06 +0100
Subject: [Ksummit-discuss] [TECH TOPIC] What kernel documentation could
 be
In-Reply-To: <CANiq72kafybxPbS13g+heYMX=Ggmw_8MqYj41uJ0Ek=3HP7-eA@mail.gmail.com>
References: <87sfo3nh3t.fsf@meer.lwn.net> <20220618092447.5ebed314@sal.lan>
 <CANiq72kafybxPbS13g+heYMX=Ggmw_8MqYj41uJ0Ek=3HP7-eA@mail.gmail.com>
Message-ID: <20220618121606.755e40df@sal.lan>
Message-ID: <20220618111606.SQ5WHpKOp3u6I3SeI90Y9IdG_KDIMjAKDlQDfPpWwyA@z>

Em Sat, 18 Jun 2022 13:03:38 +0200
Miguel Ojeda <miguel.ojeda.sandonis@gmail.com> escreveu:

> On Sat, Jun 18, 2022 at 10:24 AM Mauro Carvalho Chehab
> <mchehab@kernel.org> wrote:
> >
> > Life would be a lot easier on this side if rustdoc could
> > support ReST.  
> 
> Not sure what you mean by this. Do you mean writing ReST for Rust
> documentation? For the files inside `Documentation/rust/`, we already
> use ReST [*] like the rest. For the source code docs (the ones handled
> by rustdoc), it outputs HTML. Or do you mean using rustdoc to generate
> `Doc/`s or similar?

I meant that rustdoc could generate ReST output, being included inside
the Kernel documentation on a way similar to kerneldoc. This would
integrate better with our building system, which can produce output docs
on 3 different formats (html, epub and pdf).

Regards,
Mauro


> 
> [*] Though it would be nice to be able to use Markdown (but that is a
> different topic).
> 
> Cheers,
> Miguel
