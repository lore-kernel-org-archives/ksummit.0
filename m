From: Shuah Khan <skhan@linuxfoundation.org>
Date: Fri, 6 May 2022 10:23:43 -0600
Subject: [Ksummit-discuss] uninitialized variables bugs
In-Reply-To: <CAK8P3a0DY2b15yyzpwsjOCqOALfTbsmYf1kTnQZF5wPW8mtFbQ@mail.gmail.com>
References: <20220506091338.GE4031@kadam>
 <CAK8P3a0DY2b15yyzpwsjOCqOALfTbsmYf1kTnQZF5wPW8mtFbQ@mail.gmail.com>
Message-ID: <dc58c60e-a92c-92b8-ae5e-d7cf2ef5f051@linuxfoundation.org>

On 5/6/22 5:56 AM, Arnd Bergmann wrote:
> On Fri, May 6, 2022 at 11:13 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> 
>>
>> It's frustrating.  Sometimes the false positives are hard to analyse
>> because I have to read through multiple functions.  A lot of times
>> when I write a patch and a commit message Nathan has already fixed it
>> so it's just a waste of time.
> 
> Agreed. I'm not actually checking for those warnings on gcc any more,
> but just the clang warnings point to a bigger problem.
> 
>> It's risky as well.  The Smatch check for uninitialized variables was
>> broken for most of 2021.  Nathan sometimes goes on vacation.
>>
>> I guess I would hope that one day we can turn on the GCC uninitialized
>> variable warnings again.  That would mean silencing false positives
>> which a lot of people don't want to do...  Maybe Clang has fewer false
>> positives than GCC?
> 

I would like to throw resource leak bugs in the mix. I am finding cppcheck
has been effective in finding them.

I am seeing a lot of file pointer leaks  in error legs in kselftest code error
paths. I have a few fixes in the works to send out.

We could discuss this topic at the LPC Kernel Testing and Dependability mini-conf
as well.

thanks,
-- Shuah



