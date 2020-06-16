Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8D91FB39D
	for <lists+linux1394-devel@lfdr.de>; Tue, 16 Jun 2020 16:09:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jlCH7-0008HY-N0; Tue, 16 Jun 2020 14:09:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bart.vanassche@gmail.com>) id 1jlCH0-0008GH-1u
 for linux1394-devel@lists.sourceforge.net; Tue, 16 Jun 2020 14:09:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AKN3xkZHGhXjYJKtlU4bgJbg4Zua5Zr3wZEUnZukPYA=; b=RCpN+QwDHhAK++pb6nnmFzk6ah
 DO3HSF79b/prNYsxgF+M4ZCDVDhEw6GwcQkiVVKbJclUfRpAnRjUGNZGbHSq9c8i6k6CXrDK8WR/N
 rZWX4xdUHwRDPbbHs9V1u8RYeNCEFKs+EPJtTcr2MFG9x5vlI6gGhUImPvMoCOV22t0I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AKN3xkZHGhXjYJKtlU4bgJbg4Zua5Zr3wZEUnZukPYA=; b=ZdIIns5ShueZ95dD3H/PIhjG9Z
 jIRULPbj/NmpikO8RY9db+V1Q7wt5C175kpY2CmQu1VoXJeUNvE+oLfdKF0rCn9amO0aUlNYcf0qP
 Mgvxkm84xCMCCFH/5TQFxEv5rqL58TsAZmk6of3hciGUXSXm479DJPlhnW9yte2yq2HU=;
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jlCGt-005MbV-HU
 for linux1394-devel@lists.sourceforge.net; Tue, 16 Jun 2020 14:09:04 +0000
Received: by mail-pf1-f194.google.com with SMTP id z63so8627022pfb.1
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 16 Jun 2020 07:09:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=AKN3xkZHGhXjYJKtlU4bgJbg4Zua5Zr3wZEUnZukPYA=;
 b=i8PYQLklA25BDoTHvBouWf7+/i5J8OQp2jFdh+FFMp0tSjICt7v7pv3lMgUBUnDylD
 nDzagjfv3AqAVNPwSuiFG7rptjMtas513/Q9OIEZKg10XJfopo85kL53zaESEx4Ge4Wc
 Svaamg09e8cV/+T0Dg3kwzjIerrS52udyVXOryjn8BpPGwTSsrpj4bF/XaywCLmnzUaa
 h7KOO88qvdsaNIMGYXHrLQjmkjjzOQAsXaYjaLS4Q+2ivk+RKQxcIalvd48+GZVlFoAv
 ss9pGAzdO4jYFGXOKn22EsRe9BXOyh6ZLOX1X8xKdOg+6Jlr8+Rx629Os/oltbdPVFK+
 TWuA==
X-Gm-Message-State: AOAM533FunV7JKO1MCIYe983kiu7Yx1oN+bpEQdD/qOvAe9ibd34kvuG
 5ybCjB2qmCxURvIhw7v1dls=
X-Google-Smtp-Source: ABdhPJxvqeA4mS5CbWAq1QTTwdI4aDes22DBvQ2QH1b3ZgxqJ9QrlXi1rvpXsrtOZCUi914rTc490Q==
X-Received: by 2002:a63:7d1d:: with SMTP id y29mr2222280pgc.189.1592316537850; 
 Tue, 16 Jun 2020 07:08:57 -0700 (PDT)
Received: from [192.168.50.147] (c-73-241-217-19.hsd1.ca.comcast.net.
 [73.241.217.19])
 by smtp.gmail.com with ESMTPSA id fy21sm2702187pjb.38.2020.06.16.07.08.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 07:08:56 -0700 (PDT)
Subject: Re: [PATCH] scsi: target/sbp: remove firewire SBP target driver
To: Finn Thain <fthain@telegraphics.com.au>, Chris Boot <bootc@boo.tc>
References: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
 <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet>
 <7ad14946-5c25-fc49-1e48-72d37a607832@boo.tc>
 <alpine.LNX.2.22.394.2006150919110.8@nippy.intranet>
 <8da0c285-d707-a3d2-063e-472af5cc560f@boo.tc>
 <alpine.LNX.2.22.394.2006161929380.8@nippy.intranet>
From: Bart Van Assche <bvanassche@acm.org>
Autocrypt: addr=bvanassche@acm.org; prefer-encrypt=mutual; keydata=
 mQENBFSOu4oBCADcRWxVUvkkvRmmwTwIjIJvZOu6wNm+dz5AF4z0FHW2KNZL3oheO3P8UZWr
 LQOrCfRcK8e/sIs2Y2D3Lg/SL7qqbMehGEYcJptu6mKkywBfoYbtBkVoJ/jQsi2H0vBiiCOy
 fmxMHIPcYxaJdXxrOG2UO4B60Y/BzE6OrPDT44w4cZA9DH5xialliWU447Bts8TJNa3lZKS1
 AvW1ZklbvJfAJJAwzDih35LxU2fcWbmhPa7EO2DCv/LM1B10GBB/oQB5kvlq4aA2PSIWkqz4
 3SI5kCPSsygD6wKnbRsvNn2mIACva6VHdm62A7xel5dJRfpQjXj2snd1F/YNoNc66UUTABEB
 AAG0JEJhcnQgVmFuIEFzc2NoZSA8YnZhbmFzc2NoZUBhY20ub3JnPokBOQQTAQIAIwUCVI67
 igIbAwcLCQgHAwIBBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFcPTXFzhAJ8QkH/1AdXblKL65M
 Y1Zk1bYKnkAb4a98LxCPm/pJBilvci6boefwlBDZ2NZuuYWYgyrehMB5H+q+Kq4P0IBbTqTa
 jTPAANn62A6jwJ0FnCn6YaM9TZQjM1F7LoDX3v+oAkaoXuq0dQ4hnxQNu792bi6QyVdZUvKc
 macVFVgfK9n04mL7RzjO3f+X4midKt/s+G+IPr4DGlrq+WH27eDbpUR3aYRk8EgbgGKvQFdD
 CEBFJi+5ZKOArmJVBSk21RHDpqyz6Vit3rjep7c1SN8s7NhVi9cjkKmMDM7KYhXkWc10lKx2
 RTkFI30rkDm4U+JpdAd2+tP3tjGf9AyGGinpzE2XY1K5AQ0EVI67igEIAKiSyd0nECrgz+H5
 PcFDGYQpGDMTl8MOPCKw/F3diXPuj2eql4xSbAdbUCJzk2ETif5s3twT2ER8cUTEVOaCEUY3
 eOiaFgQ+nGLx4BXqqGewikPJCe+UBjFnH1m2/IFn4T9jPZkV8xlkKmDUqMK5EV9n3eQLkn5g
 lco+FepTtmbkSCCjd91EfThVbNYpVQ5ZjdBCXN66CKyJDMJ85HVr5rmXG/nqriTh6cv1l1Js
 T7AFvvPjUPknS6d+BETMhTkbGzoyS+sywEsQAgA+BMCxBH4LvUmHYhpS+W6CiZ3ZMxjO8Hgc
 ++w1mLeRUvda3i4/U8wDT3SWuHcB3DWlcppECLkAEQEAAYkBHwQYAQIACQUCVI67igIbDAAK
 CRBxXD01xc4QCZ4dB/0QrnEasxjM0PGeXK5hcZMT9Eo998alUfn5XU0RQDYdwp6/kMEXMdmT
 oH0F0xB3SQ8WVSXA9rrc4EBvZruWQ+5/zjVrhhfUAx12CzL4oQ9Ro2k45daYaonKTANYG22y
 //x8dLe2Fv1By4SKGhmzwH87uXxbTJAUxiWIi1np0z3/RDnoVyfmfbbL1DY7zf2hYXLLzsJR
 mSsED/1nlJ9Oq5fALdNEPgDyPUerqHxcmIub+pF0AzJoYHK5punqpqfGmqPbjxrJLPJfHVKy
 goMj5DlBMoYqEgpbwdUYkH6QdizJJCur4icy8GUNbisFYABeoJ91pnD4IGei3MTdvINSZI5e
Message-ID: <8cbab988-fba7-8e27-7faf-9f7aa36ca235@acm.org>
Date: Tue, 16 Jun 2020 07:08:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.22.394.2006161929380.8@nippy.intranet>
Content-Language: en-US
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (bart.vanassche[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1jlCGt-005MbV-HU
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Nicholas Bellinger <nab@linux-iscsi.org>,
 target-devel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On 2020-06-16 02:42, Finn Thain wrote:
> Martin said, "I'd appreciate a patch to remove it"
> 
> And Bart said, "do you want to keep this driver in the kernel tree?"
> 
> AFAICT both comments are quite ambiguous. I don't see an actionable 
> request, just an expression of interest from people doing their jobs.
> 
> Note well: there is no pay check associated with having a MAINTAINERS file 
> entry.

Hi Finn,

As far as I know the sbp driver only has had one user ever and that user
is no longer user the sbp driver. So why to keep it in the kernel tree?
Restoring a kernel driver can be easy - the first step is a "git revert".

Thanks,

Bart.




_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
